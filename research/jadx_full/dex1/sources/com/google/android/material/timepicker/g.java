package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import androidx.constraintlayout.widget.ConstraintLayout;
import z3.l;
import z3.n;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g extends ConstraintLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f1456b;
    public int c;
    public final z3.k d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903951);
        LayoutInflater.from(context).inflate(2131493034, this);
        z3.k kVar = new z3.k();
        this.d = kVar;
        l lVar = new l(0.5f);
        n nVarG = kVar.c.f6213a.g();
        nVarG.e = lVar;
        nVarG.f6250f = lVar;
        nVarG.f6251g = lVar;
        nVarG.f6252h = lVar;
        kVar.setShapeAppearanceModel(nVarG.a());
        this.d.q(ColorStateList.valueOf(-1));
        setBackground(this.d);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.C, 2130903951, 0);
        this.c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f1456b = new f(this);
        typedArrayObtainStyledAttributes.recycle();
    }

    public abstract void a();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super.addView(view, i9, viewGroup$LayoutParams);
        if (view.getId() == -1) {
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            f fVar = this.f1456b;
            handler.removeCallbacks(fVar);
            handler.post(fVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            f fVar = this.f1456b;
            handler.removeCallbacks(fVar);
            handler.post(fVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void setBackgroundColor(int i9) {
        this.d.q(ColorStateList.valueOf(i9));
    }
}
