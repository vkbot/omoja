package p182r3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p018b3.AbstractC0884a;
import p018b3.AbstractC0885b;
import p018b3.C0887d;
import p018b3.C0888e;
import p141n.C2455p;
import p258z3.C3729o;
import p258z3.InterfaceC3740z;

/* JADX INFO: renamed from: r3.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3101h {

    /* JADX INFO: renamed from: a */
    public C3729o f8836a;

    /* JADX INFO: renamed from: b */
    public C3100g f8837b;

    /* JADX INFO: renamed from: c */
    public RippleDrawable f8838c;

    /* JADX INFO: renamed from: d */
    public C3095b f8839d;

    /* JADX INFO: renamed from: e */
    public RippleDrawable f8840e;

    /* JADX INFO: renamed from: f */
    public boolean f8841f;

    /* JADX INFO: renamed from: h */
    public float f8843h;

    /* JADX INFO: renamed from: i */
    public float f8844i;

    /* JADX INFO: renamed from: j */
    public float f8845j;

    /* JADX INFO: renamed from: k */
    public int f8846k;

    /* JADX INFO: renamed from: l */
    public StateListAnimator f8847l;

    /* JADX INFO: renamed from: m */
    public Animator f8848m;

    /* JADX INFO: renamed from: n */
    public C0888e f8849n;

    /* JADX INFO: renamed from: o */
    public C0888e f8850o;

    /* JADX INFO: renamed from: q */
    public int f8852q;

    /* JADX INFO: renamed from: s */
    public final FloatingActionButton f8854s;

    /* JADX INFO: renamed from: t */
    public final C2455p f8855t;

    /* JADX INFO: renamed from: y */
    public static final FastOutLinearInInterpolator f8834y = AbstractC0884a.f663c;

    /* JADX INFO: renamed from: z */
    public static final int f8835z = R.attr.motionDurationLong2;

    /* JADX INFO: renamed from: A */
    public static final int f8825A = R.attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: B */
    public static final int f8826B = R.attr.motionDurationMedium1;

    /* JADX INFO: renamed from: C */
    public static final int f8827C = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    /* JADX INFO: renamed from: D */
    public static final int[] f8828D = {android.R.attr.state_pressed, android.R.attr.state_enabled};

    /* JADX INFO: renamed from: E */
    public static final int[] f8829E = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};

    /* JADX INFO: renamed from: F */
    public static final int[] f8830F = {android.R.attr.state_focused, android.R.attr.state_enabled};

    /* JADX INFO: renamed from: G */
    public static final int[] f8831G = {android.R.attr.state_hovered, android.R.attr.state_enabled};

    /* JADX INFO: renamed from: H */
    public static final int[] f8832H = {android.R.attr.state_enabled};

    /* JADX INFO: renamed from: I */
    public static final int[] f8833I = new int[0];

    /* JADX INFO: renamed from: g */
    public boolean f8842g = true;

    /* JADX INFO: renamed from: p */
    public float f8851p = 1.0f;

    /* JADX INFO: renamed from: r */
    public int f8853r = 0;

    /* JADX INFO: renamed from: u */
    public final Rect f8856u = new Rect();

    /* JADX INFO: renamed from: v */
    public final RectF f8857v = new RectF();

    /* JADX INFO: renamed from: w */
    public final RectF f8858w = new RectF();

    /* JADX INFO: renamed from: x */
    public final Matrix f8859x = new Matrix();

    public C3101h(FloatingActionButton floatingActionButton, C2455p c2455p) {
        this.f8854s = floatingActionButton;
        this.f8855t = c2455p;
    }

    /* JADX INFO: renamed from: a */
    public final void m4929a(float f8, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f8854s.getDrawable();
        if (drawable == null || this.f8852q == 0) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.f8857v;
        rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        float f10 = this.f8852q;
        RectF rectF2 = this.f8858w;
        rectF2.set(0.0f, 0.0f, f10, f10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        float f11 = this.f8852q / 2.0f;
        matrix.postScale(f8, f8, f11, f11);
    }

    /* JADX INFO: renamed from: b */
    public final AnimatorSet m4930b(C0888e c0888e, float f8, float f10, float f11) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f8};
        FloatingActionButton floatingActionButton = this.f8854s;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        c0888e.m1022d("opacity").m1023a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f10);
        c0888e.m1022d("scale").m1023a(objectAnimatorOfFloat2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 26) {
            objectAnimatorOfFloat2.setEvaluator(new C3099f());
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f10);
        c0888e.m1022d("scale").m1023a(objectAnimatorOfFloat3);
        if (i10 == 26) {
            objectAnimatorOfFloat3.setEvaluator(new C3099f());
        }
        arrayList.add(objectAnimatorOfFloat3);
        Matrix matrix = this.f8859x;
        m4929a(f11, matrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(floatingActionButton, new C0887d(), new C3098e(this), new Matrix(matrix));
        c0888e.m1022d("iconScale").m1023a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AbstractC0885b.m1018a(animatorSet, arrayList);
        return animatorSet;
    }

    /* JADX INFO: renamed from: c */
    public final AnimatorSet m4931c(final float f8, int i10, int i11, final float f10, final float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.f8854s;
        final float alpha = floatingActionButton.getAlpha();
        final float scaleX = floatingActionButton.getScaleX();
        final float scaleY = floatingActionButton.getScaleY();
        final float f12 = this.f8851p;
        final Matrix matrix = new Matrix(this.f8859x);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: r3.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C3101h c3101h = this.f8811a;
                FloatingActionButton floatingActionButton2 = c3101h.f8854s;
                floatingActionButton2.setAlpha(AbstractC0884a.m1016b(alpha, f8, 0.0f, 0.2f, fFloatValue));
                float f13 = scaleX;
                float f14 = f10;
                floatingActionButton2.setScaleX(AbstractC0884a.m1015a(f13, f14, fFloatValue));
                floatingActionButton2.setScaleY(AbstractC0884a.m1015a(scaleY, f14, fFloatValue));
                float f15 = f12;
                float f16 = f11;
                c3101h.f8851p = AbstractC0884a.m1015a(f15, f16, fFloatValue);
                float fM1015a = AbstractC0884a.m1015a(f15, f16, fFloatValue);
                Matrix matrix2 = matrix;
                c3101h.m4929a(fM1015a, matrix2);
                floatingActionButton2.setImageMatrix(matrix2);
            }
        });
        arrayList.add(valueAnimatorOfFloat);
        AbstractC0885b.m1018a(animatorSet, arrayList);
        animatorSet.setDuration(AbstractC1031d.m1287q(floatingActionButton.getContext(), i10, floatingActionButton.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(AbstractC1031d.m1288r(floatingActionButton.getContext(), i11, AbstractC0884a.f662b));
        return animatorSet;
    }

    /* JADX INFO: renamed from: d */
    public final AnimatorSet m4932d(float f8, float f10) {
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = {f8};
        FloatingActionButton floatingActionButton = this.f8854s;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", fArr).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f10).setDuration(100L));
        animatorSet.setInterpolator(f8834y);
        return animatorSet;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: e */
    public final void m4933e(float f8, float f10, float f11) {
        FloatingActionButton floatingActionButton = this.f8854s;
        if (floatingActionButton.getStateListAnimator() == this.f8847l) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(f8828D, m4932d(f8, f11));
            stateListAnimator.addState(f8829E, m4932d(f8, f10));
            stateListAnimator.addState(f8830F, m4932d(f8, f10));
            stateListAnimator.addState(f8831G, m4932d(f8, f10));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f8).setDuration(0L));
            if (Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f8834y);
            stateListAnimator.addState(f8832H, animatorSet);
            stateListAnimator.addState(f8833I, m4932d(0.0f, 0.0f));
            this.f8847l = stateListAnimator;
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (((FloatingActionButton) this.f8855t.f6648c).f2360l || (this.f8841f && floatingActionButton.getSizeDimension() < this.f8846k)) {
            m4936h();
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m4935g(C3729o c3729o) {
        this.f8836a = c3729o;
        C3100g c3100g = this.f8837b;
        if (c3100g != null) {
            c3100g.setShapeAppearanceModel(c3729o);
        }
        Drawable.Callback callback = this.f8838c;
        if (callback instanceof InterfaceC3740z) {
            ((InterfaceC3740z) callback).setShapeAppearanceModel(c3729o);
        }
        C3095b c3095b = this.f8839d;
        if (c3095b != null) {
            c3095b.f8809o = c3729o;
            c3095b.invalidateSelf();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0061  */
    /* JADX INFO: renamed from: h */
    public final void m4936h() {
        C2455p c2455p = this.f8855t;
        FloatingActionButton floatingActionButton = (FloatingActionButton) c2455p.f6648c;
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) c2455p.f6648c;
        boolean z9 = floatingActionButton.f2360l;
        boolean z10 = this.f8841f;
        Rect rect = this.f8856u;
        FloatingActionButton floatingActionButton3 = this.f8854s;
        if (z9) {
            int iMax = z10 ? Math.max((this.f8846k - floatingActionButton3.getSizeDimension()) / 2, 0) : 0;
            float elevation = this.f8842g ? floatingActionButton3.getElevation() + this.f8845j : 0.0f;
            int iMax2 = Math.max(iMax, (int) Math.ceil(elevation));
            int iMax3 = Math.max(iMax, (int) Math.ceil(elevation * 1.5f));
            rect.set(iMax2, iMax3, iMax2, iMax3);
        } else if (z10) {
            int sizeDimension = floatingActionButton3.getSizeDimension();
            int i10 = this.f8846k;
            if (sizeDimension < i10) {
                int sizeDimension2 = (i10 - floatingActionButton3.getSizeDimension()) / 2;
                rect.set(sizeDimension2, sizeDimension2, sizeDimension2, sizeDimension2);
            } else {
                rect.set(0, 0, 0, 0);
            }
        } else {
            rect.set(0, 0, 0, 0);
        }
        Preconditions.checkNotNull(this.f8840e, "Didn't initialize content background");
        if (((FloatingActionButton) c2455p.f6648c).f2360l || (this.f8841f && floatingActionButton3.getSizeDimension() < this.f8846k)) {
            super/*android.view.View*/.setBackgroundDrawable(new InsetDrawable((Drawable) this.f8840e, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            RippleDrawable rippleDrawable = this.f8840e;
            if (rippleDrawable != null) {
                super/*android.view.View*/.setBackgroundDrawable(rippleDrawable);
            }
        }
        int i11 = rect.left;
        int i12 = rect.top;
        int i13 = rect.right;
        int i14 = rect.bottom;
        floatingActionButton2.f2361m.set(i11, i12, i13, i14);
        int i15 = floatingActionButton2.f2358j;
        floatingActionButton2.setPadding(i11 + i15, i12 + i15, i13 + i15, i14 + i15);
    }

    /* JADX INFO: renamed from: f */
    public final void m4934f() {
    }
}
