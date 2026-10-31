package com.google.android.material.transformation;

import android.animation.Animator$AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.media.h;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import b3.a;
import b3.b;
import b3.c;
import b3.e;
import b3.f;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import j1.i;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public final Rect c;
    public final RectF d;
    public final RectF e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f1460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f1461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1462h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FabTransformationBehavior() {
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f1460f = new int[2];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Pair c(float f8, float f9, boolean z8, h hVar) {
        f fVarD;
        f fVarD2;
        if (f8 == 0.0f || f9 == 0.0f) {
            fVarD = ((e) hVar.c).d("translationXLinear");
            fVarD2 = ((e) hVar.c).d("translationYLinear");
        } else if ((!z8 || f9 >= 0.0f) && (z8 || f9 <= 0.0f)) {
            fVarD = ((e) hVar.c).d("translationXCurveDownwards");
            fVarD2 = ((e) hVar.c).d("translationYCurveDownwards");
        } else {
            fVarD = ((e) hVar.c).d("translationXCurveUpwards");
            fVarD2 = ((e) hVar.c).d("translationYCurveUpwards");
        }
        return new Pair(fVarD, fVarD2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float f(h hVar, f fVar, float f8) {
        long j9 = fVar.f311a;
        long j10 = fVar.f312b;
        f fVarD = ((e) hVar.c).d("expansion");
        return a.a(f8, 0.0f, fVar.b().getInterpolation((((fVarD.f311a + fVarD.f312b) + 17) - j9) / j10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet b(View view, View view2, boolean z8, boolean z9) {
        ObjectAnimator objectAnimatorOfFloat;
        int i9;
        float f8;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ObjectAnimator objectAnimatorOfFloat4;
        h hVarH = h(view2.getContext(), z8);
        if (z8) {
            this.f1461g = view.getTranslationX();
            this.f1462h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        float elevation = view2.getElevation() - view.getElevation();
        if (z8) {
            if (!z9) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        ((e) hVarH.c).d("elevation").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        float fD = d(view, view2, (c5.e) hVarH.d);
        float fE = e(view, view2, (c5.e) hVarH.d);
        Pair pairC = c(fD, fE, z8, hVarH);
        f fVar = (f) pairC.first;
        f fVar2 = (f) pairC.second;
        RectF rectF = this.d;
        if (z8) {
            if (!z9) {
                view2.setTranslationX(-fD);
                view2.setTranslationY(-fE);
            }
            i9 = 0;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            f8 = 0.0f;
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float f9 = f(hVarH, fVar, -fD);
            float f10 = f(hVarH, fVar2, -fE);
            Rect rect = this.c;
            view2.getWindowVisibleDisplayFrame(rect);
            rectF.set(rect);
            RectF rectF2 = this.e;
            g(view2, rectF2);
            rectF2.offset(f9, f10);
            rectF2.intersect(rectF);
            rectF.set(rectF2);
        } else {
            i9 = 0;
            f8 = 0.0f;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fD);
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fE);
        }
        fVar.a(objectAnimatorOfFloat2);
        fVar2.a(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat3);
        rectF.width();
        rectF.height();
        float fD2 = d(view, view2, (c5.e) hVarH.d);
        float fE2 = e(view, view2, (c5.e) hVarH.d);
        Pair pairC2 = c(fD2, fE2, z8, hVarH);
        f fVar3 = (f) pairC2.first;
        f fVar4 = (f) pairC2.second;
        Property property = View.TRANSLATION_X;
        if (!z8) {
            fD2 = this.f1461g;
        }
        float[] fArr = new float[1];
        fArr[i9] = fD2;
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        if (!z8) {
            fE2 = this.f1462h;
        }
        float[] fArr2 = new float[1];
        fArr2[i9] = fE2;
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        fVar3.a(objectAnimatorOfFloat5);
        fVar4.a(objectAnimatorOfFloat6);
        arrayList.add(objectAnimatorOfFloat5);
        arrayList.add(objectAnimatorOfFloat6);
        boolean z10 = view2 instanceof ViewGroup;
        if (z10) {
            View viewFindViewById = view2.findViewById(2131297104);
            ViewGroup viewGroup = null;
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof ViewGroup) {
                    viewGroup = (ViewGroup) viewFindViewById;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view2;
            }
            if (viewGroup != null) {
                if (z8) {
                    if (!z9) {
                        c.f307a.set(viewGroup, Float.valueOf(f8));
                    }
                    c cVar = c.f307a;
                    float[] fArr3 = new float[1];
                    fArr3[i9] = 1.0f;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, cVar, fArr3);
                } else {
                    c cVar2 = c.f307a;
                    float[] fArr4 = new float[1];
                    fArr4[i9] = f8;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, cVar2, fArr4);
                }
                ((e) hVarH.c).d("contentFade").a(objectAnimatorOfFloat4);
                arrayList.add(objectAnimatorOfFloat4);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        b.a(animatorSet, arrayList);
        animatorSet.addListener(new h4.b(z8, view2, view));
        int size = arrayList2.size();
        for (int i10 = i9; i10 < size; i10++) {
            animatorSet.addListener((Animator$AnimatorListener) arrayList2.get(i10));
        }
        return animatorSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float d(View view, View view2, c5.e eVar) {
        RectF rectF = this.d;
        g(view, rectF);
        rectF.offset(this.f1461g, this.f1462h);
        RectF rectF2 = this.e;
        g(view2, rectF2);
        eVar.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float e(View view, View view2, c5.e eVar) {
        RectF rectF = this.d;
        g(view, rectF);
        rectF.offset(this.f1461g, this.f1462h);
        RectF rectF2 = this.e;
        g(view2, rectF2);
        eVar.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f1460f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public abstract h h(Context context, boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            i.l("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
            return false;
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        if (coordinatorLayout$LayoutParams.dodgeInsetEdges == 0) {
            coordinatorLayout$LayoutParams.dodgeInsetEdges = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f1460f = new int[2];
    }
}
