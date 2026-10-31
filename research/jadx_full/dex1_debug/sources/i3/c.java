package i3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import com.bumptech.glide.d;
import com.google.android.material.card.MaterialCardView;
import e4.h;
import z3.e;
import z3.k;
import z3.m;
import z3.n;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final double f2636y = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final ColorDrawable f2637z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialCardView f2638a;
    public final k c;
    public final k d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2641g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f2643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f2644j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f2645k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f2646l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o f2647m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f2648n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public RippleDrawable f2649o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LayerDrawable f2650p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public k f2651q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2652s;
    public ValueAnimator t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TimeInterpolator f2653u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f2654v;
    public final int w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f2639b = new Rect();
    public boolean r = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2655x = 0.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f2637z = Build$VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(MaterialCardView materialCardView, AttributeSet attributeSet) {
        this.f2638a = materialCardView;
        k kVar = new k(materialCardView.getContext(), attributeSet, 2130903949, 2132018340);
        this.c = kVar;
        kVar.m(materialCardView.getContext());
        kVar.s();
        n nVarG = kVar.c.f6213a.g();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, 2130903949, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardCornerRadius)) {
            float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
            nVarG.e = new z3.a(dimension);
            nVarG.f6250f = new z3.a(dimension);
            nVarG.f6251g = new z3.a(dimension);
            nVarG.f6252h = new z3.a(dimension);
        }
        this.d = new k();
        h(nVarG.a());
        this.f2653u = d.r(materialCardView.getContext(), 2130904070, b3.a.f305a);
        this.f2654v = d.q(materialCardView.getContext(), 2130904060, 300);
        this.w = d.q(materialCardView.getContext(), 2130904059, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float b(a.a aVar, float f8) {
        if (aVar instanceof m) {
            return (float) ((1.0d - f2636y) * ((double) f8));
        }
        if (aVar instanceof e) {
            return f8 / 2.0f;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float a() {
        a.a aVar = this.f2647m.f6258a;
        k kVar = this.c;
        float fB = b(aVar, kVar.k());
        a.a aVar2 = this.f2647m.f6259b;
        float[] fArr = kVar.D;
        float fMax = Math.max(fB, b(aVar2, fArr != null ? fArr[0] : kVar.c.f6213a.f6260f.a(kVar.h())));
        a.a aVar3 = this.f2647m.c;
        float[] fArr2 = kVar.D;
        float fB2 = b(aVar3, fArr2 != null ? fArr2[1] : kVar.c.f6213a.f6261g.a(kVar.h()));
        a.a aVar4 = this.f2647m.d;
        float[] fArr3 = kVar.D;
        return Math.max(fMax, Math.max(fB2, b(aVar4, fArr3 != null ? fArr3[2] : kVar.c.f6213a.f6262h.a(kVar.h()))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LayerDrawable c() {
        if (this.f2649o == null) {
            this.f2651q = new k(this.f2647m);
            this.f2649o = new RippleDrawable(this.f2645k, null, this.f2651q);
        }
        if (this.f2650p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f2649o, this.d, this.f2644j});
            this.f2650p = layerDrawable;
            layerDrawable.setId(2, 2131297103);
        }
        return this.f2650p;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b d(Drawable drawable) {
        int iCeil;
        int i9;
        MaterialCardView materialCardView = this.f2638a;
        if (materialCardView.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f));
            iCeil = (int) Math.ceil(materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f));
            i9 = iCeil2;
        } else {
            iCeil = 0;
            i9 = 0;
        }
        return new b(drawable, iCeil, i9, iCeil, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(int i9, int i10) {
        int iCeil;
        int iCeil2;
        int i11;
        int i12;
        if (this.f2650p != null) {
            MaterialCardView materialCardView = this.f2638a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i13 = this.f2641g;
            boolean z8 = (i13 & GravityCompat.END) == 8388613;
            int i14 = this.e;
            int i15 = z8 ? ((i9 - i14) - this.f2640f) - iCeil2 : i14;
            int i16 = (i13 & 80) == 80 ? i14 : ((i10 - i14) - this.f2640f) - iCeil;
            int i17 = (i13 & GravityCompat.END) == 8388613 ? i14 : ((i9 - i14) - this.f2640f) - iCeil2;
            if ((i13 & 80) == 80) {
                i14 = ((i10 - i14) - this.f2640f) - iCeil;
            }
            int i18 = i14;
            if (materialCardView.getLayoutDirection() == 1) {
                i12 = i17;
                i11 = i15;
            } else {
                i11 = i17;
                i12 = i15;
            }
            this.f2650p.setLayerInset(2, i12, i18, i11, i16);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(boolean z8, boolean z9) {
        Drawable drawable = this.f2644j;
        if (drawable != null) {
            if (!z9) {
                drawable.setAlpha(z8 ? 255 : 0);
                this.f2655x = z8 ? 1.0f : 0.0f;
                return;
            }
            float f8 = z8 ? 1.0f : 0.0f;
            float f9 = this.f2655x;
            if (z8) {
                f9 = 1.0f - f9;
            }
            ValueAnimator valueAnimator = this.t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.t = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f2655x, f8);
            this.t = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new h(1, this));
            this.t.setInterpolator(this.f2653u);
            this.t.setDuration((long) ((z8 ? this.f2654v : this.w) * f9));
            this.t.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f2644j = drawableMutate;
            drawableMutate.setTintList(this.f2646l);
            f(this.f2638a.d, false);
        } else {
            this.f2644j = f2637z;
        }
        LayerDrawable layerDrawable = this.f2650p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(2131297103, this.f2644j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(o oVar) {
        this.f2647m = oVar;
        k kVar = this.c;
        kVar.setShapeAppearanceModel(oVar);
        kVar.f6245y = !kVar.n();
        k kVar2 = this.d;
        if (kVar2 != null) {
            kVar2.setShapeAppearanceModel(oVar);
        }
        k kVar3 = this.f2651q;
        if (kVar3 != null) {
            kVar3.setShapeAppearanceModel(oVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i() {
        MaterialCardView materialCardView = this.f2638a;
        return materialCardView.getPreventCornerOverlap() && this.c.n() && materialCardView.getUseCompatPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j() {
        View view = this.f2638a;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        Drawable drawable = this.f2643i;
        Drawable drawableC = j() ? c() : this.d;
        this.f2643i = drawableC;
        if (drawable != drawableC) {
            MaterialCardView materialCardView = this.f2638a;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
            } else {
                materialCardView.setForeground(d(drawableC));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        MaterialCardView materialCardView = this.f2638a;
        float cardViewRadius = 0.0f;
        float fA = ((!materialCardView.getPreventCornerOverlap() || this.c.n()) && !i()) ? 0.0f : a();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - f2636y) * ((double) materialCardView.getCardViewRadius()));
        }
        int i9 = (int) (fA - cardViewRadius);
        Rect rect = this.f2639b;
        materialCardView.b(rect.left + i9, rect.top + i9, rect.right + i9, rect.bottom + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        boolean z8 = this.r;
        MaterialCardView materialCardView = this.f2638a;
        if (!z8) {
            materialCardView.setBackgroundInternal(d(this.c));
        }
        materialCardView.setForeground(d(this.f2643i));
    }
}
