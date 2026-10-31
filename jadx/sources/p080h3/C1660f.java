package p080h3;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.dynamicanimation.animation.SpringForce;
import com.example.navistart.R;
import com.google.android.material.button.MaterialButton;
import p134m3.AbstractC2381a;
import p238x3.AbstractC3567a;
import p258z3.C3714b0;
import p258z3.C3722h;
import p258z3.C3725k;
import p258z3.C3729o;
import p258z3.InterfaceC3723i;
import p258z3.InterfaceC3740z;

/* JADX INFO: renamed from: h3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1660f {

    /* JADX INFO: renamed from: a */
    public final MaterialButton f4231a;

    /* JADX INFO: renamed from: b */
    public C3729o f4232b;

    /* JADX INFO: renamed from: c */
    public C3714b0 f4233c;

    /* JADX INFO: renamed from: d */
    public SpringForce f4234d;

    /* JADX INFO: renamed from: e */
    public InterfaceC3723i f4235e;

    /* JADX INFO: renamed from: f */
    public int f4236f;

    /* JADX INFO: renamed from: g */
    public int f4237g;

    /* JADX INFO: renamed from: h */
    public int f4238h;

    /* JADX INFO: renamed from: i */
    public int f4239i;

    /* JADX INFO: renamed from: j */
    public int f4240j;

    /* JADX INFO: renamed from: k */
    public int f4241k;

    /* JADX INFO: renamed from: l */
    public PorterDuff.Mode f4242l;

    /* JADX INFO: renamed from: m */
    public ColorStateList f4243m;

    /* JADX INFO: renamed from: n */
    public ColorStateList f4244n;

    /* JADX INFO: renamed from: o */
    public ColorStateList f4245o;

    /* JADX INFO: renamed from: p */
    public C3725k f4246p;

    /* JADX INFO: renamed from: t */
    public boolean f4250t;

    /* JADX INFO: renamed from: v */
    public RippleDrawable f4252v;

    /* JADX INFO: renamed from: w */
    public int f4253w;

    /* JADX INFO: renamed from: q */
    public boolean f4247q = false;

    /* JADX INFO: renamed from: r */
    public boolean f4248r = false;

    /* JADX INFO: renamed from: s */
    public boolean f4249s = false;

    /* JADX INFO: renamed from: u */
    public boolean f4251u = true;

    public C1660f(MaterialButton materialButton, C3729o c3729o) {
        this.f4231a = materialButton;
        this.f4232b = c3729o;
    }

    /* JADX INFO: renamed from: a */
    public final C3725k m2764a(boolean z9) {
        RippleDrawable rippleDrawable = this.f4252v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (C3725k) ((LayerDrawable) ((InsetDrawable) this.f4252v.getDrawable(0)).getDrawable()).getDrawable(!z9 ? 1 : 0);
    }

    /* JADX INFO: renamed from: b */
    public final void m2765b(int i10, int i11) {
        MaterialButton materialButton = this.f4231a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i12 = this.f4238h;
        int i13 = this.f4239i;
        this.f4239i = i11;
        this.f4238h = i10;
        if (!this.f4248r) {
            m2766c();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i10) - i12, paddingEnd, (paddingBottom + i11) - i13);
    }

    /* JADX INFO: renamed from: c */
    public final void m2766c() {
        C3725k c3725k = new C3725k(this.f4232b);
        C3714b0 c3714b0 = this.f4233c;
        if (c3714b0 != null) {
            c3725k.m5951t(c3714b0);
        }
        SpringForce springForce = this.f4234d;
        if (springForce != null) {
            c3725k.m5946o(springForce);
        }
        InterfaceC3723i interfaceC3723i = this.f4235e;
        if (interfaceC3723i != null) {
            c3725k.f11046F = interfaceC3723i;
        }
        MaterialButton materialButton = this.f4231a;
        c3725k.m5944m(materialButton.getContext());
        c3725k.setTintList(this.f4243m);
        PorterDuff.Mode mode = this.f4242l;
        if (mode != null) {
            c3725k.setTintMode(mode);
        }
        float f8 = this.f4241k;
        ColorStateList colorStateList = this.f4244n;
        c3725k.f11048c.f11031k = f8;
        c3725k.invalidateSelf();
        C3722h c3722h = c3725k.f11048c;
        if (c3722h.f11025e != colorStateList) {
            c3722h.f11025e = colorStateList;
            c3725k.onStateChange(c3725k.getState());
        }
        C3725k c3725k2 = new C3725k(this.f4232b);
        C3714b0 c3714b1 = this.f4233c;
        if (c3714b1 != null) {
            c3725k2.m5951t(c3714b1);
        }
        SpringForce springForce2 = this.f4234d;
        if (springForce2 != null) {
            c3725k2.m5946o(springForce2);
        }
        c3725k2.setTint(0);
        float f10 = this.f4241k;
        int iM3746a = this.f4247q ? AbstractC2381a.m3746a(R.attr.colorSurface, materialButton) : 0;
        c3725k2.f11048c.f11031k = f10;
        c3725k2.invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iM3746a);
        C3722h c3722h2 = c3725k2.f11048c;
        if (c3722h2.f11025e != colorStateListValueOf) {
            c3722h2.f11025e = colorStateListValueOf;
            c3725k2.onStateChange(c3725k2.getState());
        }
        C3725k c3725k3 = new C3725k(this.f4232b);
        this.f4246p = c3725k3;
        C3714b0 c3714b2 = this.f4233c;
        if (c3714b2 != null) {
            c3725k3.m5951t(c3714b2);
        }
        SpringForce springForce3 = this.f4234d;
        if (springForce3 != null) {
            this.f4246p.m5946o(springForce3);
        }
        this.f4246p.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(AbstractC3567a.m5684b(this.f4245o), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c3725k2, c3725k}), this.f4236f, this.f4238h, this.f4237g, this.f4239i), this.f4246p);
        this.f4252v = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        C3725k c3725kM2764a = m2764a(false);
        if (c3725kM2764a != null) {
            c3725kM2764a.m5947p(this.f4253w);
            c3725kM2764a.setState(materialButton.getDrawableState());
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2767d() {
        InterfaceC3740z interfaceC3740z;
        C3725k c3725kM2764a = m2764a(false);
        if (c3725kM2764a != null) {
            C3714b0 c3714b0 = this.f4233c;
            if (c3714b0 != null) {
                c3725kM2764a.m5951t(c3714b0);
            } else {
                c3725kM2764a.setShapeAppearanceModel(this.f4232b);
            }
            SpringForce springForce = this.f4234d;
            if (springForce != null) {
                c3725kM2764a.m5946o(springForce);
            }
        }
        C3725k c3725kM2764a2 = m2764a(true);
        if (c3725kM2764a2 != null) {
            C3714b0 c3714b1 = this.f4233c;
            if (c3714b1 != null) {
                c3725kM2764a2.m5951t(c3714b1);
            } else {
                c3725kM2764a2.setShapeAppearanceModel(this.f4232b);
            }
            SpringForce springForce2 = this.f4234d;
            if (springForce2 != null) {
                c3725kM2764a2.m5946o(springForce2);
            }
        }
        RippleDrawable rippleDrawable = this.f4252v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            interfaceC3740z = null;
        } else {
            int numberOfLayers = this.f4252v.getNumberOfLayers();
            RippleDrawable rippleDrawable2 = this.f4252v;
            interfaceC3740z = numberOfLayers > 2 ? (InterfaceC3740z) rippleDrawable2.getDrawable(2) : (InterfaceC3740z) rippleDrawable2.getDrawable(1);
        }
        if (interfaceC3740z != null) {
            interfaceC3740z.setShapeAppearanceModel(this.f4232b);
            if (interfaceC3740z instanceof C3725k) {
                C3725k c3725k = (C3725k) interfaceC3740z;
                C3714b0 c3714b2 = this.f4233c;
                if (c3714b2 != null) {
                    c3725k.m5951t(c3714b2);
                }
                SpringForce springForce3 = this.f4234d;
                if (springForce3 != null) {
                    c3725k.m5946o(springForce3);
                }
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2768e() {
        C3725k c3725kM2764a = m2764a(false);
        C3725k c3725kM2764a2 = m2764a(true);
        if (c3725kM2764a != null) {
            float f8 = this.f4241k;
            ColorStateList colorStateList = this.f4244n;
            c3725kM2764a.f11048c.f11031k = f8;
            c3725kM2764a.invalidateSelf();
            C3722h c3722h = c3725kM2764a.f11048c;
            if (c3722h.f11025e != colorStateList) {
                c3722h.f11025e = colorStateList;
                c3725kM2764a.onStateChange(c3725kM2764a.getState());
            }
            if (c3725kM2764a2 != null) {
                float f10 = this.f4241k;
                int iM3746a = this.f4247q ? AbstractC2381a.m3746a(R.attr.colorSurface, this.f4231a) : 0;
                c3725kM2764a2.f11048c.f11031k = f10;
                c3725kM2764a2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iM3746a);
                C3722h c3722h2 = c3725kM2764a2.f11048c;
                if (c3722h2.f11025e != colorStateListValueOf) {
                    c3722h2.f11025e = colorStateListValueOf;
                    c3725kM2764a2.onStateChange(c3725kM2764a2.getState());
                }
            }
        }
    }
}
