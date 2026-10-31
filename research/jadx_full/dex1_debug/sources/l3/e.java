package l3;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint$FontMetrics;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils$TruncateAt;
import android.util.AttributeSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import s3.i;
import s3.j;
import s3.q;
import w3.f;
import z3.h;
import z3.k;
import z3.n;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends k implements Drawable$Callback, i {
    public static final int[] Q0 = {R$attr.state_enabled};
    public static final ShapeDrawable R0 = new ShapeDrawable(new OvalShape());
    public int A0;
    public int B0;
    public boolean C0;
    public int D0;
    public int E0;
    public ColorFilter F0;
    public PorterDuffColorFilter G0;
    public ColorStateList H0;
    public ColorStateList I;
    public PorterDuff$Mode I0;
    public ColorStateList J;
    public int[] J0;
    public float K;
    public ColorStateList K0;
    public float L;
    public WeakReference L0;
    public ColorStateList M;
    public TextUtils$TruncateAt M0;
    public float N;
    public boolean N0;
    public ColorStateList O;
    public int O0;
    public CharSequence P;
    public boolean P0;
    public boolean Q;
    public Drawable R;
    public ColorStateList S;
    public float T;
    public boolean U;
    public boolean V;
    public Drawable W;
    public RippleDrawable X;
    public ColorStateList Y;
    public float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence f3260a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f3261b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f3262c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Drawable f3263d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ColorStateList f3264e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public b3.e f3265f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public b3.e f3266g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public float f3267h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f3268i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float f3269j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float f3270k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public float f3271l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public float f3272m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public float f3273n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public float f3274o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final Context f3275p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final Paint f3276q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final Paint$FontMetrics f3277r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final RectF f3278s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final PointF f3279t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final Path f3280u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final j f3281v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f3282w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f3283x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f3284y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f3285z0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903270, 2132018342);
        this.L = -1.0f;
        this.f3276q0 = new Paint(1);
        this.f3277r0 = new Paint$FontMetrics();
        this.f3278s0 = new RectF();
        this.f3279t0 = new PointF();
        this.f3280u0 = new Path();
        this.E0 = 255;
        this.I0 = PorterDuff$Mode.SRC_IN;
        this.L0 = new WeakReference(null);
        m(context);
        this.f3275p0 = context;
        j jVar = new j(this);
        this.f3281v0 = jVar;
        this.P = "";
        jVar.f5290a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = Q0;
        setState(iArr);
        W(iArr);
        this.N0 = true;
        R0.setTint(-1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean D(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean E(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float A() {
        if (!d0() && !c0()) {
            return 0.0f;
        }
        float f8 = this.f3268i0;
        Drawable drawable = this.C0 ? this.f3263d0 : this.R;
        float intrinsicWidth = this.T;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f8 + this.f3269j0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float B() {
        if (e0()) {
            return this.f3272m0 + this.Z + this.f3273n0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float C() {
        return this.P0 ? k() : this.L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F() {
        d dVar = (d) this.L0.get();
        if (dVar != null) {
            Chip chip = (Chip) dVar;
            chip.c(chip.f1225m);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:54:0x00a0  */
    public final boolean G(int[] iArr, int[] iArr2) {
        int colorForState;
        boolean z8;
        boolean z9;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.I;
        int iD = d(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f3282w0) : 0);
        boolean state = true;
        if (this.f3282w0 != iD) {
            this.f3282w0 = iD;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.J;
        int iD2 = d(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f3283x0) : 0);
        if (this.f3283x0 != iD2) {
            this.f3283x0 = iD2;
            zOnStateChange = true;
        }
        int iCompositeColors = ColorUtils.compositeColors(iD2, iD);
        if ((this.f3284y0 != iCompositeColors) | (this.c.d == null)) {
            this.f3284y0 = iCompositeColors;
            q(ColorStateList.valueOf(iCompositeColors));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.M;
        int colorForState2 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f3285z0) : 0;
        if (this.f3285z0 != colorForState2) {
            this.f3285z0 = colorForState2;
            zOnStateChange = true;
        }
        if (this.K0 != null) {
            int[] iArr3 = x3.a.f6025a;
            boolean z10 = false;
            boolean z11 = false;
            for (int i9 : iArr) {
                if (i9 == 16842910) {
                    z10 = true;
                } else if (i9 == 16842908 || i9 == 16842919 || i9 == 16843623) {
                    z11 = true;
                }
            }
            if (z10 && z11) {
                colorForState = this.K0.getColorForState(iArr, this.A0);
            } else {
                colorForState = 0;
            }
        } else {
            colorForState = 0;
        }
        if (this.A0 != colorForState) {
            this.A0 = colorForState;
        }
        f fVar = this.f3281v0.f5293g;
        int colorForState3 = (fVar == null || (colorStateList = fVar.f5904k) == null) ? 0 : colorStateList.getColorForState(iArr, this.B0);
        if (this.B0 != colorForState3) {
            this.B0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z8 = false;
            break;
        }
        int length = state2.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                if (state2[i10] == 16842912) {
                    if (this.f3261b0) {
                        z8 = true;
                        break;
                    }
                } else {
                    i10++;
                }
            }
            z8 = false;
            break;
        }
        if (this.C0 == z8 || this.f3263d0 == null) {
            z9 = false;
        } else {
            float fA = A();
            this.C0 = z8;
            if (fA != A()) {
                zOnStateChange = true;
                z9 = true;
            } else {
                z9 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.H0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.D0) : 0;
        if (this.D0 != colorForState4) {
            this.D0 = colorForState4;
            ColorStateList colorStateList6 = this.H0;
            PorterDuff$Mode porterDuff$Mode = this.I0;
            this.G0 = (colorStateList6 == null || porterDuff$Mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), porterDuff$Mode);
        } else {
            state = zOnStateChange;
        }
        if (E(this.R)) {
            state |= this.R.setState(iArr);
        }
        if (E(this.f3263d0)) {
            state |= this.f3263d0.setState(iArr);
        }
        if (E(this.W)) {
            int[] iArr4 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr4, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr4, iArr.length, iArr2.length);
            state |= this.W.setState(iArr4);
        }
        if (E(this.X)) {
            state |= this.X.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z9) {
            F();
        }
        return state;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(boolean z8) {
        if (this.f3261b0 != z8) {
            this.f3261b0 = z8;
            float fA = A();
            if (!z8 && this.C0) {
                this.C0 = false;
            }
            float fA2 = A();
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(Drawable drawable) {
        if (this.f3263d0 != drawable) {
            float fA = A();
            this.f3263d0 = drawable;
            float fA2 = A();
            f0(this.f3263d0);
            y(this.f3263d0);
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f3264e0 != colorStateList) {
            this.f3264e0 = colorStateList;
            if (this.f3262c0 && (drawable = this.f3263d0) != null && this.f3261b0) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void K(boolean z8) {
        if (this.f3262c0 != z8) {
            boolean zC0 = c0();
            this.f3262c0 = z8;
            boolean zC1 = c0();
            if (zC0 != zC1) {
                Drawable drawable = this.f3263d0;
                if (zC1) {
                    y(drawable);
                } else {
                    f0(drawable);
                }
                invalidateSelf();
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void L(float f8) {
        if (this.L != f8) {
            this.L = f8;
            n nVarG = this.c.f6213a.g();
            nVarG.e = new z3.a(f8);
            nVarG.f6250f = new z3.a(f8);
            nVarG.f6251g = new z3.a(f8);
            nVarG.f6252h = new z3.a(f8);
            setShapeAppearanceModel(nVarG.a());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M(Drawable drawable) {
        Drawable drawable2 = this.R;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fA = A();
            this.R = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fA2 = A();
            f0(drawableUnwrap);
            if (d0()) {
                y(this.R);
            }
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void N(float f8) {
        if (this.T != f8) {
            float fA = A();
            this.T = f8;
            float fA2 = A();
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void O(ColorStateList colorStateList) {
        this.U = true;
        if (this.S != colorStateList) {
            this.S = colorStateList;
            if (d0()) {
                this.R.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void P(boolean z8) {
        if (this.Q != z8) {
            boolean zD0 = d0();
            this.Q = z8;
            boolean zD1 = d0();
            if (zD0 != zD1) {
                Drawable drawable = this.R;
                if (zD1) {
                    y(drawable);
                } else {
                    f0(drawable);
                }
                invalidateSelf();
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Q(ColorStateList colorStateList) {
        if (this.M != colorStateList) {
            this.M = colorStateList;
            if (this.P0) {
                h hVar = this.c;
                if (hVar.e != colorStateList) {
                    hVar.e = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void R(float f8) {
        if (this.N != f8) {
            this.N = f8;
            this.f3276q0.setStrokeWidth(f8);
            if (this.P0) {
                this.c.f6220k = f8;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(Drawable drawable) {
        Drawable drawable2 = this.W;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fB = B();
            this.W = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            this.X = new RippleDrawable(x3.a.b(this.O), this.W, R0);
            float fB2 = B();
            f0(drawableUnwrap);
            if (e0()) {
                y(this.W);
            }
            invalidateSelf();
            if (fB != fB2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void T(float f8) {
        if (this.f3273n0 != f8) {
            this.f3273n0 = f8;
            invalidateSelf();
            if (e0()) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void U(float f8) {
        if (this.Z != f8) {
            this.Z = f8;
            invalidateSelf();
            if (e0()) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(float f8) {
        if (this.f3272m0 != f8) {
            this.f3272m0 = f8;
            invalidateSelf();
            if (e0()) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean W(int[] iArr) {
        if (Arrays.equals(this.J0, iArr)) {
            return false;
        }
        this.J0 = iArr;
        if (e0()) {
            return G(getState(), iArr);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void X(ColorStateList colorStateList) {
        if (this.Y != colorStateList) {
            this.Y = colorStateList;
            if (e0()) {
                this.W.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Y(boolean z8) {
        if (this.V != z8) {
            boolean zE0 = e0();
            this.V = z8;
            boolean zE1 = e0();
            if (zE0 != zE1) {
                Drawable drawable = this.W;
                if (zE1) {
                    y(drawable);
                } else {
                    f0(drawable);
                }
                invalidateSelf();
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Z(float f8) {
        if (this.f3269j0 != f8) {
            float fA = A();
            this.f3269j0 = f8;
            float fA2 = A();
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // s3.i
    public final void a() {
        F();
        invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a0(float f8) {
        if (this.f3268i0 != f8) {
            float fA = A();
            this.f3268i0 = f8;
            float fA2 = A();
            invalidateSelf();
            if (fA != fA2) {
                F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b0(ColorStateList colorStateList) {
        if (this.O != colorStateList) {
            this.O = colorStateList;
            this.K0 = null;
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c0() {
        return this.f3262c0 && this.f3263d0 != null && this.C0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d0() {
        return this.Q && this.R != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to calculate best type for var: r0v12 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v12 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v13 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v14 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v0 ??, new type: android.graphics.RectF
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v10 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v5 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r22v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 'this'  ??, new type: l3.e
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r2v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v10 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r3v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v14 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r3v55 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v55 ??, new type: android.graphics.drawable.Drawable
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r3v57 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v57 ??, new type: android.graphics.drawable.Drawable
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
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
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r7v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v0 ??, new type: android.graphics.Rect
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r22v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 'this'  ??, new type: l3.e
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v13 ??, new type: android.graphics.drawable.LayerDrawable
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderAllow(TypeUpdate.java:66)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryWiderObjects(FixTypesVisitor.java:795)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:249)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final void draw(android.graphics.Canvas r23) {
        /*
            r22 = this;
            r0 = r22
            android.graphics.Rect r7 = r0.getBounds()
            boolean r1 = r7.isEmpty()
            if (r1 != 0) goto L10
            int r6 = r0.E0
            if (r6 != 0) goto L13
        L10:
            r13 = r0
            goto L2d6
        L13:
            r8 = 255(0xff, float:3.57E-43)
            r9 = 0
            if (r6 >= r8) goto L2c
            int r1 = r7.left
            float r2 = (float) r1
            int r1 = r7.top
            float r3 = (float) r1
            int r1 = r7.right
            float r4 = (float) r1
            int r1 = r7.bottom
            float r5 = (float) r1
            r1 = r23
            int r2 = r1.saveLayerAlpha(r2, r3, r4, r5, r6)
            r10 = r2
            goto L2f
        L2c:
            r1 = r23
            r10 = r9
        L2f:
            boolean r2 = r0.P0
            r3 = r2
            android.graphics.Paint r2 = r0.f3276q0
            android.graphics.RectF r11 = r0.f3278s0
            if (r3 != 0) goto L50
            int r3 = r0.f3282w0
            r2.setColor(r3)
            android.graphics.Paint$Style r3 = android.graphics.Paint$Style.FILL
            r2.setStyle(r3)
            r11.set(r7)
            float r3 = r0.C()
            float r4 = r0.C()
            r1.drawRoundRect(r11, r3, r4, r2)
        L50:
            boolean r3 = r0.P0
            if (r3 != 0) goto L76
            int r3 = r0.f3283x0
            r2.setColor(r3)
            android.graphics.Paint$Style r3 = android.graphics.Paint$Style.FILL
            r2.setStyle(r3)
            android.graphics.ColorFilter r3 = r0.F0
            if (r3 == 0) goto L63
            goto L65
        L63:
            android.graphics.PorterDuffColorFilter r3 = r0.G0
        L65:
            r2.setColorFilter(r3)
            r11.set(r7)
            float r3 = r0.C()
            float r4 = r0.C()
            r1.drawRoundRect(r11, r3, r4, r2)
        L76:
            boolean r3 = r0.P0
            if (r3 == 0) goto L7d
            super.draw(r23)
        L7d:
            float r3 = r0.N
            r12 = 0
            int r3 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            r13 = 1073741824(0x40000000, float:2.0)
            if (r3 <= 0) goto Lc1
            boolean r3 = r0.P0
            if (r3 != 0) goto Lc1
            int r3 = r0.f3285z0
            r2.setColor(r3)
            android.graphics.Paint$Style r3 = android.graphics.Paint$Style.STROKE
            r2.setStyle(r3)
            boolean r3 = r0.P0
            if (r3 != 0) goto La2
            android.graphics.ColorFilter r3 = r0.F0
            if (r3 == 0) goto L9d
            goto L9f
        L9d:
            android.graphics.PorterDuffColorFilter r3 = r0.G0
        L9f:
            r2.setColorFilter(r3)
        La2:
            int r3 = r7.left
            float r3 = (float) r3
            float r4 = r0.N
            float r4 = r4 / r13
            float r3 = r3 + r4
            int r5 = r7.top
            float r5 = (float) r5
            float r5 = r5 + r4
            int r6 = r7.right
            float r6 = (float) r6
            float r6 = r6 - r4
            int r14 = r7.bottom
            float r14 = (float) r14
            float r14 = r14 - r4
            r11.set(r3, r5, r6, r14)
            float r3 = r0.L
            float r4 = r0.N
            float r4 = r4 / r13
            float r3 = r3 - r4
            r1.drawRoundRect(r11, r3, r3, r2)
        Lc1:
            int r3 = r0.A0
            r2.setColor(r3)
            android.graphics.Paint$Style r3 = android.graphics.Paint$Style.FILL
            r2.setStyle(r3)
            r11.set(r7)
            boolean r3 = r0.P0
            if (r3 != 0) goto Le1
            float r3 = r0.C()
            float r4 = r0.C()
            r1.drawRoundRect(r11, r3, r4, r2)
            r21 = r13
        Ldf:
            r13 = r0
            goto L113
        Le1:
            android.graphics.RectF r3 = new android.graphics.RectF
            r3.<init>(r7)
            z3.h r4 = r0.c
            z3.o r15 = r4.f6213a
            float[] r5 = r0.D
            float r4 = r4.f6219j
            z3.g r6 = r0.f6241s
            z3.q r14 = r0.t
            r21 = r13
            android.graphics.Path r13 = r0.f3280u0
            r18 = r3
            r17 = r4
            r16 = r5
            r19 = r6
            r20 = r13
            r14.a(r15, r16, r17, r18, r19, r20)
            r3 = r20
            android.graphics.RectF r6 = r0.h()
            z3.h r4 = r0.c
            z3.o r4 = r4.f6213a
            float[] r5 = r0.D
            r0.f(r1, r2, r3, r4, r5, r6)
            goto Ldf
        L113:
            boolean r0 = r13.d0()
            if (r0 == 0) goto L13c
            r13.z(r7, r11)
            float r0 = r11.left
            float r2 = r11.top
            r1.translate(r0, r2)
            android.graphics.drawable.Drawable r3 = r13.R
            float r4 = r11.width()
            int r4 = (int) r4
            float r5 = r11.height()
            int r5 = (int) r5
            r3.setBounds(r9, r9, r4, r5)
            android.graphics.drawable.Drawable r3 = r13.R
            r3.draw(r1)
            float r0 = -r0
            float r2 = -r2
            r1.translate(r0, r2)
        L13c:
            boolean r0 = r13.c0()
            if (r0 == 0) goto L165
            r13.z(r7, r11)
            float r0 = r11.left
            float r2 = r11.top
            r1.translate(r0, r2)
            android.graphics.drawable.Drawable r3 = r13.f3263d0
            float r4 = r11.width()
            int r4 = (int) r4
            float r5 = r11.height()
            int r5 = (int) r5
            r3.setBounds(r9, r9, r4, r5)
            android.graphics.drawable.Drawable r3 = r13.f3263d0
            r3.draw(r1)
            float r0 = -r0
            float r2 = -r2
            r1.translate(r0, r2)
        L165:
            boolean r0 = r13.N0
            if (r0 == 0) goto L260
            java.lang.CharSequence r0 = r13.P
            if (r0 == 0) goto L260
            android.graphics.PointF r0 = r13.f3279t0
            r0.set(r12, r12)
            android.graphics.Paint$Align r2 = android.graphics.Paint$Align.LEFT
            java.lang.CharSequence r3 = r13.P
            s3.j r4 = r13.f3281v0
            if (r3 == 0) goto L1af
            float r3 = r13.f3267h0
            float r5 = r13.A()
            float r5 = r5 + r3
            float r3 = r13.f3270k0
            float r5 = r5 + r3
            int r3 = androidx.core.graphics.drawable.DrawableCompat.getLayoutDirection(r13)
            if (r3 != 0) goto L191
            int r3 = r7.left
            float r3 = (float) r3
            float r3 = r3 + r5
            r0.x = r3
            goto L199
        L191:
            int r2 = r7.right
            float r2 = (float) r2
            float r2 = r2 - r5
            r0.x = r2
            android.graphics.Paint$Align r2 = android.graphics.Paint$Align.RIGHT
        L199:
            int r3 = r7.centerY()
            float r3 = (float) r3
            android.text.TextPaint r5 = r4.f5290a
            android.graphics.Paint$FontMetrics r6 = r13.f3277r0
            r5.getFontMetrics(r6)
            float r5 = r6.descent
            float r6 = r6.ascent
            float r5 = r5 + r6
            float r5 = r5 / r21
            float r3 = r3 - r5
            r0.y = r3
        L1af:
            r11.setEmpty()
            java.lang.CharSequence r3 = r13.P
            if (r3 == 0) goto L1f1
            float r3 = r13.f3267h0
            float r5 = r13.A()
            float r5 = r5 + r3
            float r3 = r13.f3270k0
            float r5 = r5 + r3
            float r3 = r13.f3274o0
            float r6 = r13.B()
            float r6 = r6 + r3
            float r3 = r13.f3271l0
            float r6 = r6 + r3
            int r3 = androidx.core.graphics.drawable.DrawableCompat.getLayoutDirection(r13)
            int r12 = r7.left
            if (r3 != 0) goto L1dd
            float r3 = (float) r12
            float r3 = r3 + r5
            r11.left = r3
            int r3 = r7.right
            float r3 = (float) r3
            float r3 = r3 - r6
            r11.right = r3
            goto L1e7
        L1dd:
            float r3 = (float) r12
            float r3 = r3 + r6
            r11.left = r3
            int r3 = r7.right
            float r3 = (float) r3
            float r3 = r3 - r5
            r11.right = r3
        L1e7:
            int r3 = r7.top
            float r3 = (float) r3
            r11.top = r3
            int r3 = r7.bottom
            float r3 = (float) r3
            r11.bottom = r3
        L1f1:
            w3.f r3 = r4.f5293g
            android.text.TextPaint r6 = r4.f5290a
            if (r3 == 0) goto L206
            int[] r3 = r13.getState()
            r6.drawableState = r3
            w3.f r3 = r4.f5293g
            l3.a r5 = r4.f5291b
            android.content.Context r12 = r13.f3275p0
            r3.d(r12, r6, r5)
        L206:
            r6.setTextAlign(r2)
            java.lang.CharSequence r2 = r13.P
            java.lang.String r2 = r2.toString()
            boolean r3 = r4.e
            if (r3 != 0) goto L216
            float r2 = r4.c
            goto L21b
        L216:
            r4.a(r2)
            float r2 = r4.c
        L21b:
            int r2 = java.lang.Math.round(r2)
            float r3 = r11.width()
            int r3 = java.lang.Math.round(r3)
            if (r2 <= r3) goto L22c
            r2 = 1
            r12 = r2
            goto L22d
        L22c:
            r12 = r9
        L22d:
            if (r12 == 0) goto L238
            int r2 = r1.save()
            r1.clipRect(r11)
            r14 = r2
            goto L239
        L238:
            r14 = r9
        L239:
            java.lang.CharSequence r2 = r13.P
            if (r12 == 0) goto L24b
            android.text.TextUtils$TruncateAt r3 = r13.M0
            if (r3 == 0) goto L24b
            float r3 = r11.width()
            android.text.TextUtils$TruncateAt r4 = r13.M0
            java.lang.CharSequence r2 = android.text.TextUtils.ellipsize(r2, r6, r3, r4)
        L24b:
            int r3 = r2.length()
            float r4 = r0.x
            float r5 = r0.y
            r1 = r2
            r2 = 0
            r0 = r23
            r0.drawText(r1, r2, r3, r4, r5, r6)
            r1 = r0
            if (r12 == 0) goto L260
            r1.restoreToCount(r14)
        L260:
            boolean r0 = r13.e0()
            if (r0 == 0) goto L2cf
            r11.setEmpty()
            boolean r0 = r13.e0()
            if (r0 == 0) goto L29f
            float r0 = r13.f3274o0
            float r2 = r13.f3273n0
            float r0 = r0 + r2
            int r2 = androidx.core.graphics.drawable.DrawableCompat.getLayoutDirection(r13)
            if (r2 != 0) goto L286
            int r2 = r7.right
            float r2 = (float) r2
            float r2 = r2 - r0
            r11.right = r2
            float r0 = r13.Z
            float r2 = r2 - r0
            r11.left = r2
            goto L291
        L286:
            int r2 = r7.left
            float r2 = (float) r2
            float r2 = r2 + r0
            r11.left = r2
            float r0 = r13.Z
            float r2 = r2 + r0
            r11.right = r2
        L291:
            float r0 = r7.exactCenterY()
            float r2 = r13.Z
            float r3 = r2 / r21
            float r0 = r0 - r3
            r11.top = r0
            float r0 = r0 + r2
            r11.bottom = r0
        L29f:
            float r0 = r11.left
            float r2 = r11.top
            r1.translate(r0, r2)
            android.graphics.drawable.Drawable r3 = r13.W
            float r4 = r11.width()
            int r4 = (int) r4
            float r5 = r11.height()
            int r5 = (int) r5
            r3.setBounds(r9, r9, r4, r5)
            android.graphics.drawable.RippleDrawable r3 = r13.X
            android.graphics.drawable.Drawable r4 = r13.W
            android.graphics.Rect r4 = r4.getBounds()
            r3.setBounds(r4)
            android.graphics.drawable.RippleDrawable r3 = r13.X
            r3.jumpToCurrentState()
            android.graphics.drawable.RippleDrawable r3 = r13.X
            r3.draw(r1)
            float r0 = -r0
            float r2 = -r2
            r1.translate(r0, r2)
        L2cf:
            int r0 = r13.E0
            if (r0 >= r8) goto L2d6
            r1.restoreToCount(r10)
        L2d6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l3.e.draw(android.graphics.Canvas):void");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e0() {
        return this.V && this.W != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.E0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.F0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.K;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float fA = A() + this.f3267h0 + this.f3270k0;
        String string = this.P.toString();
        j jVar = this.f3281v0;
        if (jVar.e) {
            jVar.a(string);
        }
        return Math.min(Math.round(B() + jVar.c + fA + this.f3271l0 + this.f3274o0), this.O0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.P0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.K, this.L);
        } else {
            outline.setRoundRect(bounds, this.L);
            outline2 = outline;
        }
        outline2.setAlpha(this.E0 / 255.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable$Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (D(this.I) || D(this.J) || D(this.M)) {
            return true;
        }
        f fVar = this.f3281v0.f5293g;
        if (fVar == null || (colorStateList = fVar.f5904k) == null || !colorStateList.isStateful()) {
            return (this.f3262c0 && this.f3263d0 != null && this.f3261b0) || E(this.R) || E(this.f3263d0) || D(this.H0);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i9) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i9);
        if (d0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.R, i9);
        }
        if (c0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f3263d0, i9);
        }
        if (e0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.W, i9);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i9) {
        boolean zOnLevelChange = super.onLevelChange(i9);
        if (d0()) {
            zOnLevelChange |= this.R.setLevel(i9);
        }
        if (c0()) {
            zOnLevelChange |= this.f3263d0.setLevel(i9);
        }
        if (e0()) {
            zOnLevelChange |= this.W.setLevel(i9);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable, s3.i
    public final boolean onStateChange(int[] iArr) {
        if (this.P0) {
            super.onStateChange(iArr);
        }
        return G(iArr, this.J0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j9) {
        Drawable$Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final void setAlpha(int i9) {
        if (this.E0 != i9) {
            this.E0 = i9;
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.F0 != colorFilter) {
            this.F0 = colorFilter;
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.H0 != colorStateList) {
            this.H0 = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintMode(PorterDuff$Mode porterDuff$Mode) {
        if (this.I0 != porterDuff$Mode) {
            this.I0 = porterDuff$Mode;
            ColorStateList colorStateList = this.H0;
            this.G0 = (colorStateList == null || porterDuff$Mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), porterDuff$Mode);
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z8, boolean z9) {
        boolean visible = super.setVisible(z8, z9);
        if (d0()) {
            visible |= this.R.setVisible(z8, z9);
        }
        if (c0()) {
            visible |= this.f3263d0.setVisible(z8, z9);
        }
        if (e0()) {
            visible |= this.W.setVisible(z8, z9);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable$Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.W) {
            if (drawable.isStateful()) {
                drawable.setState(this.J0);
            }
            drawable.setTintList(this.Y);
            return;
        }
        Drawable drawable2 = this.R;
        if (drawable == drawable2 && this.U) {
            drawable2.setTintList(this.S);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (d0() || c0()) {
            float f8 = this.f3267h0 + this.f3268i0;
            Drawable drawable = this.C0 ? this.f3263d0 : this.R;
            float intrinsicWidth = this.T;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f9 = rect.left + f8;
                rectF.left = f9;
                rectF.right = f9 + intrinsicWidth;
            } else {
                float f10 = rect.right - f8;
                rectF.right = f10;
                rectF.left = f10 - intrinsicWidth;
            }
            Drawable drawable2 = this.C0 ? this.f3263d0 : this.R;
            float fCeil = this.T;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(q.a(24, this.f3275p0));
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
