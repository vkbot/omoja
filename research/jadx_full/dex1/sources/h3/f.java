package h3;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.button.MaterialButton;
import z3.b0;
import z3.i;
import z3.k;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f2447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f2448b;
    public b0 c;
    public SpringForce d;
    public i e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2449f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2454k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PorterDuff$Mode f2455l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f2456m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f2457n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f2458o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public k f2459p;
    public boolean t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public RippleDrawable f2463v;
    public int w;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2460q = false;
    public boolean r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2461s = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2462u = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(MaterialButton materialButton, o oVar) {
        this.f2447a = materialButton;
        this.f2448b = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k a(boolean z8) {
        RippleDrawable rippleDrawable = this.f2463v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (k) ((LayerDrawable) ((InsetDrawable) this.f2463v.getDrawable(0)).getDrawable()).getDrawable(!z8 ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9, int i10) {
        MaterialButton materialButton = this.f2447a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i11 = this.f2451h;
        int i12 = this.f2452i;
        this.f2452i = i10;
        this.f2451h = i9;
        if (!this.r) {
            c();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i9) - i11, paddingEnd, (paddingBottom + i10) - i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        k kVar = new k(this.f2448b);
        b0 b0Var = this.c;
        if (b0Var != null) {
            kVar.t(b0Var);
        }
        SpringForce springForce = this.d;
        if (springForce != null) {
            kVar.o(springForce);
        }
        i iVar = this.e;
        if (iVar != null) {
            kVar.F = iVar;
        }
        MaterialButton materialButton = this.f2447a;
        kVar.m(materialButton.getContext());
        kVar.setTintList(this.f2456m);
        PorterDuff$Mode porterDuff$Mode = this.f2455l;
        if (porterDuff$Mode != null) {
            kVar.setTintMode(porterDuff$Mode);
        }
        float f8 = this.f2454k;
        ColorStateList colorStateList = this.f2457n;
        kVar.c.f6220k = f8;
        kVar.invalidateSelf();
        z3.h hVar = kVar.c;
        if (hVar.e != colorStateList) {
            hVar.e = colorStateList;
            kVar.onStateChange(kVar.getState());
        }
        k kVar2 = new k(this.f2448b);
        b0 b0Var2 = this.c;
        if (b0Var2 != null) {
            kVar2.t(b0Var2);
        }
        SpringForce springForce2 = this.d;
        if (springForce2 != null) {
            kVar2.o(springForce2);
        }
        kVar2.setTint(0);
        float f9 = this.f2454k;
        int iA = this.f2460q ? m3.a.a(2130903359, materialButton) : 0;
        kVar2.c.f6220k = f9;
        kVar2.invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iA);
        z3.h hVar2 = kVar2.c;
        if (hVar2.e != colorStateListValueOf) {
            hVar2.e = colorStateListValueOf;
            kVar2.onStateChange(kVar2.getState());
        }
        k kVar3 = new k(this.f2448b);
        this.f2459p = kVar3;
        b0 b0Var3 = this.c;
        if (b0Var3 != null) {
            kVar3.t(b0Var3);
        }
        SpringForce springForce3 = this.d;
        if (springForce3 != null) {
            this.f2459p.o(springForce3);
        }
        this.f2459p.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(x3.a.b(this.f2458o), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{kVar2, kVar}), this.f2449f, this.f2451h, this.f2450g, this.f2452i), this.f2459p);
        this.f2463v = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        k kVarA = a(false);
        if (kVarA != null) {
            kVarA.p(this.w);
            kVarA.setState(materialButton.getDrawableState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        z zVar;
        k kVarA = a(false);
        if (kVarA != null) {
            b0 b0Var = this.c;
            if (b0Var != null) {
                kVarA.t(b0Var);
            } else {
                kVarA.setShapeAppearanceModel(this.f2448b);
            }
            SpringForce springForce = this.d;
            if (springForce != null) {
                kVarA.o(springForce);
            }
        }
        k kVarA2 = a(true);
        if (kVarA2 != null) {
            b0 b0Var2 = this.c;
            if (b0Var2 != null) {
                kVarA2.t(b0Var2);
            } else {
                kVarA2.setShapeAppearanceModel(this.f2448b);
            }
            SpringForce springForce2 = this.d;
            if (springForce2 != null) {
                kVarA2.o(springForce2);
            }
        }
        RippleDrawable rippleDrawable = this.f2463v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            zVar = null;
        } else {
            int numberOfLayers = this.f2463v.getNumberOfLayers();
            RippleDrawable rippleDrawable2 = this.f2463v;
            zVar = numberOfLayers > 2 ? (z) rippleDrawable2.getDrawable(2) : (z) rippleDrawable2.getDrawable(1);
        }
        if (zVar != null) {
            zVar.setShapeAppearanceModel(this.f2448b);
            if (zVar instanceof k) {
                k kVar = (k) zVar;
                b0 b0Var3 = this.c;
                if (b0Var3 != null) {
                    kVar.t(b0Var3);
                }
                SpringForce springForce3 = this.d;
                if (springForce3 != null) {
                    kVar.o(springForce3);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        k kVarA = a(false);
        k kVarA2 = a(true);
        if (kVarA != null) {
            float f8 = this.f2454k;
            ColorStateList colorStateList = this.f2457n;
            kVarA.c.f6220k = f8;
            kVarA.invalidateSelf();
            z3.h hVar = kVarA.c;
            if (hVar.e != colorStateList) {
                hVar.e = colorStateList;
                kVarA.onStateChange(kVarA.getState());
            }
            if (kVarA2 != null) {
                float f9 = this.f2454k;
                int iA = this.f2460q ? m3.a.a(2130903359, this.f2447a) : 0;
                kVarA2.c.f6220k = f9;
                kVarA2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iA);
                z3.h hVar2 = kVarA2.c;
                if (hVar2.e != colorStateListValueOf) {
                    hVar2.e = colorStateListValueOf;
                    kVarA2.onStateChange(kVarA2.getState());
                }
            }
        }
    }
}
