package r3;

import android.R$attr;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.Matrix$ScaleToFit;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build$VERSION;
import android.util.Property;
import android.view.View;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import n.p;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f4964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f4965b;
    public RippleDrawable c;
    public b d;
    public RippleDrawable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4966f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f4968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f4969i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f4970j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4971k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public StateListAnimator f4972l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Animator f4973m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public b3.e f4974n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b3.e f4975o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4977q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final FloatingActionButton f4978s;
    public final p t;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final FastOutLinearInInterpolator f4962y = b3.a.c;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f4963z = 2130904052;
    public static final int A = 2130904068;
    public static final int B = 2130904055;
    public static final int C = 2130904066;
    public static final int[] D = {R$attr.state_pressed, R$attr.state_enabled};
    public static final int[] E = {R$attr.state_hovered, R$attr.state_focused, R$attr.state_enabled};
    public static final int[] F = {R$attr.state_focused, R$attr.state_enabled};
    public static final int[] G = {R$attr.state_hovered, R$attr.state_enabled};
    public static final int[] H = {R$attr.state_enabled};
    public static final int[] I = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4967g = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f4976p = 1.0f;
    public int r = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Rect f4979u = new Rect();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final RectF f4980v = new RectF();
    public final RectF w = new RectF();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Matrix f4981x = new Matrix();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(FloatingActionButton floatingActionButton, p pVar) {
        this.f4978s = floatingActionButton;
        this.t = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(float f8, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f4978s.getDrawable();
        if (drawable == null || this.f4977q == 0) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.f4980v;
        rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        float f9 = this.f4977q;
        RectF rectF2 = this.w;
        rectF2.set(0.0f, 0.0f, f9, f9);
        matrix.setRectToRect(rectF, rectF2, Matrix$ScaleToFit.CENTER);
        float f10 = this.f4977q / 2.0f;
        matrix.postScale(f8, f8, f10, f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AnimatorSet b(b3.e eVar, float f8, float f9, float f10) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f8};
        FloatingActionButton floatingActionButton = this.f4978s;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        eVar.d("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f9);
        eVar.d("scale").a(objectAnimatorOfFloat2);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 == 26) {
            objectAnimatorOfFloat2.setEvaluator(new f());
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f9);
        eVar.d("scale").a(objectAnimatorOfFloat3);
        if (i9 == 26) {
            objectAnimatorOfFloat3.setEvaluator(new f());
        }
        arrayList.add(objectAnimatorOfFloat3);
        Matrix matrix = this.f4981x;
        a(f10, matrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(floatingActionButton, new b3.d(), new e(this), new Matrix(matrix));
        eVar.d("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        b3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AnimatorSet c(float f8, int i9, int i10, float f9, float f10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.f4978s;
        valueAnimatorOfFloat.addUpdateListener(new d(this, floatingActionButton.getAlpha(), f8, floatingActionButton.getScaleX(), f9, floatingActionButton.getScaleY(), this.f4976p, f10, new Matrix(this.f4981x)));
        arrayList.add(valueAnimatorOfFloat);
        b3.b.a(animatorSet, arrayList);
        animatorSet.setDuration(com.bumptech.glide.d.q(floatingActionButton.getContext(), i9, floatingActionButton.getContext().getResources().getInteger(2131361835)));
        animatorSet.setInterpolator(com.bumptech.glide.d.r(floatingActionButton.getContext(), i10, b3.a.f306b));
        return animatorSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AnimatorSet d(float f8, float f9) {
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = {f8};
        FloatingActionButton floatingActionButton = this.f4978s;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", fArr).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f9).setDuration(100L));
        animatorSet.setInterpolator(f4962y);
        return animatorSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void e(float f8, float f9, float f10) {
        FloatingActionButton floatingActionButton = this.f4978s;
        if (floatingActionButton.getStateListAnimator() == this.f4972l) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(D, d(f8, f10));
            stateListAnimator.addState(E, d(f8, f9));
            stateListAnimator.addState(F, d(f8, f9));
            stateListAnimator.addState(G, d(f8, f9));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f8).setDuration(0L));
            if (Build$VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f4962y);
            stateListAnimator.addState(H, animatorSet);
            stateListAnimator.addState(I, d(0.0f, 0.0f));
            this.f4972l = stateListAnimator;
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (((FloatingActionButton) this.t.c).f1303l || (this.f4966f && floatingActionButton.getSizeDimension() < this.f4971k)) {
            h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(o oVar) {
        this.f4964a = oVar;
        g gVar = this.f4965b;
        if (gVar != null) {
            gVar.setShapeAppearanceModel(oVar);
        }
        Drawable$Callback drawable$Callback = this.c;
        if (drawable$Callback instanceof z) {
            ((z) drawable$Callback).setShapeAppearanceModel(oVar);
        }
        b bVar = this.d;
        if (bVar != null) {
            bVar.f4951o = oVar;
            bVar.invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x0061  */
    public final void h() {
        p pVar = this.t;
        FloatingActionButton floatingActionButton = (FloatingActionButton) pVar.c;
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) pVar.c;
        boolean z8 = floatingActionButton.f1303l;
        boolean z9 = this.f4966f;
        Rect rect = this.f4979u;
        FloatingActionButton floatingActionButton3 = this.f4978s;
        if (z8) {
            int iMax = z9 ? Math.max((this.f4971k - floatingActionButton3.getSizeDimension()) / 2, 0) : 0;
            float elevation = this.f4967g ? floatingActionButton3.getElevation() + this.f4970j : 0.0f;
            int iMax2 = Math.max(iMax, (int) Math.ceil(elevation));
            int iMax3 = Math.max(iMax, (int) Math.ceil(elevation * 1.5f));
            rect.set(iMax2, iMax3, iMax2, iMax3);
        } else if (z9) {
            int sizeDimension = floatingActionButton3.getSizeDimension();
            int i9 = this.f4971k;
            if (sizeDimension < i9) {
                int sizeDimension2 = (i9 - floatingActionButton3.getSizeDimension()) / 2;
                rect.set(sizeDimension2, sizeDimension2, sizeDimension2, sizeDimension2);
            } else {
                rect.set(0, 0, 0, 0);
            }
        } else {
            rect.set(0, 0, 0, 0);
        }
        Preconditions.checkNotNull(this.e, "Didn't initialize content background");
        if (((FloatingActionButton) pVar.c).f1303l || (this.f4966f && floatingActionButton3.getSizeDimension() < this.f4971k)) {
            FloatingActionButton.b(floatingActionButton2, new InsetDrawable((Drawable) this.e, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            RippleDrawable rippleDrawable = this.e;
            if (rippleDrawable != null) {
                FloatingActionButton.b(floatingActionButton2, rippleDrawable);
            }
        }
        int i10 = rect.left;
        int i11 = rect.top;
        int i12 = rect.right;
        int i13 = rect.bottom;
        floatingActionButton2.f1304m.set(i10, i11, i12, i13);
        int i14 = floatingActionButton2.f1301j;
        floatingActionButton2.setPadding(i10 + i14, i11 + i14, i12 + i14, i13 + i14);
    }

    public final void f() {
    }
}
