package p090i3;

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
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.C0251R;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.google.android.material.card.MaterialCardView;
import p000a.AbstractC0000a;
import p018b3.AbstractC0884a;
import p051e4.C1475h;
import p258z3.C3711a;
import p258z3.C3719e;
import p258z3.C3725k;
import p258z3.C3727m;
import p258z3.C3728n;
import p258z3.C3729o;

/* JADX INFO: renamed from: i3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1742c {

    /* JADX INFO: renamed from: y */
    public static final double f4530y = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: z */
    public static final ColorDrawable f4531z;

    /* JADX INFO: renamed from: a */
    public final MaterialCardView f4532a;

    /* JADX INFO: renamed from: c */
    public final C3725k f4534c;

    /* JADX INFO: renamed from: d */
    public final C3725k f4535d;

    /* JADX INFO: renamed from: e */
    public int f4536e;

    /* JADX INFO: renamed from: f */
    public int f4537f;

    /* JADX INFO: renamed from: g */
    public int f4538g;

    /* JADX INFO: renamed from: h */
    public int f4539h;

    /* JADX INFO: renamed from: i */
    public Drawable f4540i;

    /* JADX INFO: renamed from: j */
    public Drawable f4541j;

    /* JADX INFO: renamed from: k */
    public ColorStateList f4542k;

    /* JADX INFO: renamed from: l */
    public ColorStateList f4543l;

    /* JADX INFO: renamed from: m */
    public C3729o f4544m;

    /* JADX INFO: renamed from: n */
    public ColorStateList f4545n;

    /* JADX INFO: renamed from: o */
    public RippleDrawable f4546o;

    /* JADX INFO: renamed from: p */
    public LayerDrawable f4547p;

    /* JADX INFO: renamed from: q */
    public C3725k f4548q;

    /* JADX INFO: renamed from: s */
    public boolean f4550s;

    /* JADX INFO: renamed from: t */
    public ValueAnimator f4551t;

    /* JADX INFO: renamed from: u */
    public final TimeInterpolator f4552u;

    /* JADX INFO: renamed from: v */
    public final int f4553v;

    /* JADX INFO: renamed from: w */
    public final int f4554w;

    /* JADX INFO: renamed from: b */
    public final Rect f4533b = new Rect();

    /* JADX INFO: renamed from: r */
    public boolean f4549r = false;

    /* JADX INFO: renamed from: x */
    public float f4555x = 0.0f;

    static {
        f4531z = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public C1742c(MaterialCardView materialCardView, AttributeSet attributeSet) {
        this.f4532a = materialCardView;
        C3725k c3725k = new C3725k(materialCardView.getContext(), attributeSet, R.attr.materialCardViewStyle, R.style.Widget_MaterialComponents_CardView);
        this.f4534c = c3725k;
        c3725k.m5944m(materialCardView.getContext());
        c3725k.m5950s();
        C3728n c3728nM5963g = c3725k.f11048c.f11021a.m5963g();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, C0251R.styleable.CardView, R.attr.materialCardViewStyle, C0251R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(C0251R.styleable.CardView_cardCornerRadius)) {
            float dimension = typedArrayObtainStyledAttributes.getDimension(C0251R.styleable.CardView_cardCornerRadius, 0.0f);
            c3728nM5963g.f11077e = new C3711a(dimension);
            c3728nM5963g.f11078f = new C3711a(dimension);
            c3728nM5963g.f11079g = new C3711a(dimension);
            c3728nM5963g.f11080h = new C3711a(dimension);
        }
        this.f4535d = new C3725k();
        m2865h(c3728nM5963g.m5956a());
        this.f4552u = AbstractC1031d.m1288r(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0884a.f661a);
        this.f4553v = AbstractC1031d.m1287q(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.f4554w = AbstractC1031d.m1287q(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: b */
    public static float m2858b(AbstractC0000a abstractC0000a, float f8) {
        if (abstractC0000a instanceof C3727m) {
            return (float) ((1.0d - f4530y) * ((double) f8));
        }
        if (abstractC0000a instanceof C3719e) {
            return f8 / 2.0f;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: a */
    public final float m2859a() {
        AbstractC0000a abstractC0000a = this.f4544m.f11086a;
        C3725k c3725k = this.f4534c;
        float fM2858b = m2858b(abstractC0000a, c3725k.m5942k());
        AbstractC0000a abstractC0000a2 = this.f4544m.f11087b;
        float[] fArr = c3725k.f11044D;
        float fMax = Math.max(fM2858b, m2858b(abstractC0000a2, fArr != null ? fArr[0] : c3725k.f11048c.f11021a.f11091f.mo5920a(c3725k.m5939h())));
        AbstractC0000a abstractC0000a3 = this.f4544m.f11088c;
        float[] fArr2 = c3725k.f11044D;
        float fM2858b2 = m2858b(abstractC0000a3, fArr2 != null ? fArr2[1] : c3725k.f11048c.f11021a.f11092g.mo5920a(c3725k.m5939h()));
        AbstractC0000a abstractC0000a4 = this.f4544m.f11089d;
        float[] fArr3 = c3725k.f11044D;
        return Math.max(fMax, Math.max(fM2858b2, m2858b(abstractC0000a4, fArr3 != null ? fArr3[2] : c3725k.f11048c.f11021a.f11093h.mo5920a(c3725k.m5939h()))));
    }

    /* JADX INFO: renamed from: c */
    public final LayerDrawable m2860c() {
        if (this.f4546o == null) {
            this.f4548q = new C3725k(this.f4544m);
            this.f4546o = new RippleDrawable(this.f4542k, null, this.f4548q);
        }
        if (this.f4547p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f4546o, this.f4535d, this.f4541j});
            this.f4547p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f4547p;
    }

    /* JADX INFO: renamed from: d */
    public final C1741b m2861d(Drawable drawable) {
        int iCeil;
        int i10;
        MaterialCardView materialCardView = this.f4532a;
        if (materialCardView.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() * 1.5f) + (m2866i() ? m2859a() : 0.0f));
            iCeil = (int) Math.ceil(materialCardView.getMaxCardElevation() + (m2866i() ? m2859a() : 0.0f));
            i10 = iCeil2;
        } else {
            iCeil = 0;
            i10 = 0;
        }
        return new C1741b(drawable, iCeil, i10, iCeil, i10);
    }

    /* JADX INFO: renamed from: e */
    public final void m2862e(int i10, int i11) {
        int iCeil;
        int iCeil2;
        int i12;
        int i13;
        if (this.f4547p != null) {
            MaterialCardView materialCardView = this.f4532a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (m2866i() ? m2859a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (m2866i() ? m2859a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i14 = this.f4538g;
            boolean z9 = (i14 & GravityCompat.END) == 8388613;
            int i15 = this.f4536e;
            int i16 = z9 ? ((i10 - i15) - this.f4537f) - iCeil2 : i15;
            int i17 = (i14 & 80) == 80 ? i15 : ((i11 - i15) - this.f4537f) - iCeil;
            int i18 = (i14 & GravityCompat.END) == 8388613 ? i15 : ((i10 - i15) - this.f4537f) - iCeil2;
            if ((i14 & 80) == 80) {
                i15 = ((i11 - i15) - this.f4537f) - iCeil;
            }
            int i19 = i15;
            if (materialCardView.getLayoutDirection() == 1) {
                i13 = i18;
                i12 = i16;
            } else {
                i12 = i18;
                i13 = i16;
            }
            this.f4547p.setLayerInset(2, i13, i19, i12, i17);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m2863f(boolean z9, boolean z10) {
        Drawable drawable = this.f4541j;
        if (drawable != null) {
            if (!z10) {
                drawable.setAlpha(z9 ? 255 : 0);
                this.f4555x = z9 ? 1.0f : 0.0f;
                return;
            }
            float f8 = z9 ? 1.0f : 0.0f;
            float f10 = this.f4555x;
            if (z9) {
                f10 = 1.0f - f10;
            }
            ValueAnimator valueAnimator = this.f4551t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f4551t = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f4555x, f8);
            this.f4551t = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new C1475h(1, this));
            this.f4551t.setInterpolator(this.f4552u);
            this.f4551t.setDuration((long) ((z9 ? this.f4553v : this.f4554w) * f10));
            this.f4551t.start();
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m2864g(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f4541j = drawableMutate;
            drawableMutate.setTintList(this.f4543l);
            m2863f(this.f4532a.f2224d, false);
        } else {
            this.f4541j = f4531z;
        }
        LayerDrawable layerDrawable = this.f4547p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f4541j);
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m2865h(C3729o c3729o) {
        this.f4544m = c3729o;
        C3725k c3725k = this.f4534c;
        c3725k.setShapeAppearanceModel(c3729o);
        c3725k.f11070y = !c3725k.m5945n();
        C3725k c3725k2 = this.f4535d;
        if (c3725k2 != null) {
            c3725k2.setShapeAppearanceModel(c3729o);
        }
        C3725k c3725k3 = this.f4548q;
        if (c3725k3 != null) {
            c3725k3.setShapeAppearanceModel(c3729o);
        }
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2866i() {
        MaterialCardView materialCardView = this.f4532a;
        return materialCardView.getPreventCornerOverlap() && this.f4534c.m5945n() && materialCardView.getUseCompatPadding();
    }

    /* JADX INFO: renamed from: j */
    public final boolean m2867j() {
        View view = this.f4532a;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    /* JADX INFO: renamed from: k */
    public final void m2868k() {
        Drawable drawable = this.f4540i;
        Drawable drawableM2860c = m2867j() ? m2860c() : this.f4535d;
        this.f4540i = drawableM2860c;
        if (drawable != drawableM2860c) {
            MaterialCardView materialCardView = this.f4532a;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableM2860c);
            } else {
                materialCardView.setForeground(m2861d(drawableM2860c));
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m2869l() {
        MaterialCardView materialCardView = this.f4532a;
        float cardViewRadius = 0.0f;
        float fM2859a = ((!materialCardView.getPreventCornerOverlap() || this.f4534c.m5945n()) && !m2866i()) ? 0.0f : m2859a();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - f4530y) * ((double) materialCardView.getCardViewRadius()));
        }
        int i10 = (int) (fM2859a - cardViewRadius);
        Rect rect = this.f4533b;
        materialCardView.m1785b(rect.left + i10, rect.top + i10, rect.right + i10, rect.bottom + i10);
    }

    /* JADX INFO: renamed from: m */
    public final void m2870m() {
        boolean z9 = this.f4549r;
        MaterialCardView materialCardView = this.f4532a;
        if (!z9) {
            materialCardView.setBackgroundInternal(m2861d(this.f4534c));
        }
        materialCardView.setForeground(m2861d(this.f4540i));
    }
}
