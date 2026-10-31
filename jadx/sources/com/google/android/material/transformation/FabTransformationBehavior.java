package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.media.C0090h;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.example.navistart.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p018b3.AbstractC0884a;
import p018b3.AbstractC0885b;
import p018b3.C0886c;
import p018b3.C0888e;
import p018b3.C0889f;
import p030c5.C0990e;
import p081h4.C1664b;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c */
    public final Rect f2608c;

    /* JADX INFO: renamed from: d */
    public final RectF f2609d;

    /* JADX INFO: renamed from: e */
    public final RectF f2610e;

    /* JADX INFO: renamed from: f */
    public final int[] f2611f;

    /* JADX INFO: renamed from: g */
    public float f2612g;

    /* JADX INFO: renamed from: h */
    public float f2613h;

    public FabTransformationBehavior() {
        this.f2608c = new Rect();
        this.f2609d = new RectF();
        this.f2610e = new RectF();
        this.f2611f = new int[2];
    }

    /* JADX INFO: renamed from: c */
    public static Pair m1880c(float f8, float f10, boolean z9, C0090h c0090h) {
        C0889f c0889fM1022d;
        C0889f c0889fM1022d2;
        if (f8 == 0.0f || f10 == 0.0f) {
            c0889fM1022d = ((C0888e) c0090h.f191c).m1022d("translationXLinear");
            c0889fM1022d2 = ((C0888e) c0090h.f191c).m1022d("translationYLinear");
        } else if ((!z9 || f10 >= 0.0f) && (z9 || f10 <= 0.0f)) {
            c0889fM1022d = ((C0888e) c0090h.f191c).m1022d("translationXCurveDownwards");
            c0889fM1022d2 = ((C0888e) c0090h.f191c).m1022d("translationYCurveDownwards");
        } else {
            c0889fM1022d = ((C0888e) c0090h.f191c).m1022d("translationXCurveUpwards");
            c0889fM1022d2 = ((C0888e) c0090h.f191c).m1022d("translationYCurveUpwards");
        }
        return new Pair(c0889fM1022d, c0889fM1022d2);
    }

    /* JADX INFO: renamed from: f */
    public static float m1881f(C0090h c0090h, C0889f c0889f, float f8) {
        long j10 = c0889f.f670a;
        long j11 = c0889f.f671b;
        C0889f c0889fM1022d = ((C0888e) c0090h.f191c).m1022d("expansion");
        return AbstractC0884a.m1015a(f8, 0.0f, c0889f.m1024b().getInterpolation((((c0889fM1022d.f670a + c0889fM1022d.f671b) + 17) - j10) / j11));
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* JADX INFO: renamed from: b */
    public final AnimatorSet mo1879b(View view, View view2, boolean z9, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat;
        int i10;
        float f8;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ObjectAnimator objectAnimatorOfFloat4;
        C0090h c0090hMo1885h = mo1885h(view2.getContext(), z9);
        if (z9) {
            this.f2612g = view.getTranslationX();
            this.f2613h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        float elevation = view2.getElevation() - view.getElevation();
        if (z9) {
            if (!z10) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        ((C0888e) c0090hMo1885h.f191c).m1022d("elevation").m1023a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        float fM1882d = m1882d(view, view2, (C0990e) c0090hMo1885h.f192d);
        float fM1883e = m1883e(view, view2, (C0990e) c0090hMo1885h.f192d);
        Pair pairM1880c = m1880c(fM1882d, fM1883e, z9, c0090hMo1885h);
        C0889f c0889f = (C0889f) pairM1880c.first;
        C0889f c0889f2 = (C0889f) pairM1880c.second;
        RectF rectF = this.f2609d;
        if (z9) {
            if (!z10) {
                view2.setTranslationX(-fM1882d);
                view2.setTranslationY(-fM1883e);
            }
            i10 = 0;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            f8 = 0.0f;
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float fM1881f = m1881f(c0090hMo1885h, c0889f, -fM1882d);
            float fM1881f2 = m1881f(c0090hMo1885h, c0889f2, -fM1883e);
            Rect rect = this.f2608c;
            view2.getWindowVisibleDisplayFrame(rect);
            rectF.set(rect);
            RectF rectF2 = this.f2610e;
            m1884g(view2, rectF2);
            rectF2.offset(fM1881f, fM1881f2);
            rectF2.intersect(rectF);
            rectF.set(rectF2);
        } else {
            i10 = 0;
            f8 = 0.0f;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM1882d);
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fM1883e);
        }
        c0889f.m1023a(objectAnimatorOfFloat2);
        c0889f2.m1023a(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat3);
        rectF.width();
        rectF.height();
        float fM1882d2 = m1882d(view, view2, (C0990e) c0090hMo1885h.f192d);
        float fM1883e2 = m1883e(view, view2, (C0990e) c0090hMo1885h.f192d);
        Pair pairM1880c2 = m1880c(fM1882d2, fM1883e2, z9, c0090hMo1885h);
        C0889f c0889f3 = (C0889f) pairM1880c2.first;
        C0889f c0889f4 = (C0889f) pairM1880c2.second;
        Property property = View.TRANSLATION_X;
        if (!z9) {
            fM1882d2 = this.f2612g;
        }
        float[] fArr = new float[1];
        fArr[i10] = fM1882d2;
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        if (!z9) {
            fM1883e2 = this.f2613h;
        }
        float[] fArr2 = new float[1];
        fArr2[i10] = fM1883e2;
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        c0889f3.m1023a(objectAnimatorOfFloat5);
        c0889f4.m1023a(objectAnimatorOfFloat6);
        arrayList.add(objectAnimatorOfFloat5);
        arrayList.add(objectAnimatorOfFloat6);
        boolean z11 = view2 instanceof ViewGroup;
        if (z11) {
            View viewFindViewById = view2.findViewById(R.id.mtrl_child_content_container);
            ViewGroup viewGroup = null;
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof ViewGroup) {
                    viewGroup = (ViewGroup) viewFindViewById;
                }
            } else if (z11) {
                viewGroup = (ViewGroup) view2;
            }
            if (viewGroup != null) {
                if (z9) {
                    if (!z10) {
                        C0886c.f666a.set(viewGroup, Float.valueOf(f8));
                    }
                    C0886c c0886c = C0886c.f666a;
                    float[] fArr3 = new float[1];
                    fArr3[i10] = 1.0f;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, c0886c, fArr3);
                } else {
                    C0886c c0886c2 = C0886c.f666a;
                    float[] fArr4 = new float[1];
                    fArr4[i10] = f8;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, c0886c2, fArr4);
                }
                ((C0888e) c0090hMo1885h.f191c).m1022d("contentFade").m1023a(objectAnimatorOfFloat4);
                arrayList.add(objectAnimatorOfFloat4);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AbstractC0885b.m1018a(animatorSet, arrayList);
        animatorSet.addListener(new C1664b(z9, view2, view));
        int size = arrayList2.size();
        for (int i11 = i10; i11 < size; i11++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i11));
        }
        return animatorSet;
    }

    /* JADX INFO: renamed from: d */
    public final float m1882d(View view, View view2, C0990e c0990e) {
        RectF rectF = this.f2609d;
        m1884g(view, rectF);
        rectF.offset(this.f2612g, this.f2613h);
        RectF rectF2 = this.f2610e;
        m1884g(view2, rectF2);
        c0990e.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    /* JADX INFO: renamed from: e */
    public final float m1883e(View view, View view2, C0990e c0990e) {
        RectF rectF = this.f2609d;
        m1884g(view, rectF);
        rectF.offset(this.f2612g, this.f2613h);
        RectF rectF2 = this.f2610e;
        m1884g(view2, rectF2);
        c0990e.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    /* JADX INFO: renamed from: g */
    public final void m1884g(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f2611f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* JADX INFO: renamed from: h */
    public abstract C0090h mo1885h(Context context, boolean z9);

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            C1929i.m3030l("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
            return false;
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2608c = new Rect();
        this.f2609d = new RectF();
        this.f2610e = new RectF();
        this.f2611f = new int[2];
    }
}
