package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p258z3.C3725k;
import p258z3.C3726l;
import p258z3.C3728n;

/* JADX INFO: renamed from: com.google.android.material.timepicker.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1123g extends ConstraintLayout {

    /* JADX INFO: renamed from: b */
    public final RunnableC1122f f2602b;

    /* JADX INFO: renamed from: c */
    public int f2603c;

    /* JADX INFO: renamed from: d */
    public final C3725k f2604d;

    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.material.timepicker.f] */
    public AbstractC1123g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        C3725k c3725k = new C3725k();
        this.f2604d = c3725k;
        C3726l c3726l = new C3726l(0.5f);
        C3728n c3728nM5963g = c3725k.f11048c.f11021a.m5963g();
        c3728nM5963g.f11077e = c3726l;
        c3728nM5963g.f11078f = c3726l;
        c3728nM5963g.f11079g = c3726l;
        c3728nM5963g.f11080h = c3726l;
        c3725k.setShapeAppearanceModel(c3728nM5963g.m5956a());
        this.f2604d.m5948q(ColorStateList.valueOf(-1));
        setBackground(this.f2604d);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f11C, R.attr.materialClockStyle, 0);
        this.f2603c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2602b = new Runnable() { // from class: com.google.android.material.timepicker.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f2601b.mo1873a();
            }
        };
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo1873a();

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC1122f runnableC1122f = this.f2602b;
            handler.removeCallbacks(runnableC1122f);
            handler.post(runnableC1122f);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        mo1873a();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC1122f runnableC1122f = this.f2602b;
            handler.removeCallbacks(runnableC1122f);
            handler.post(runnableC1122f);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i10) {
        this.f2604d.m5948q(ColorStateList.valueOf(i10));
    }
}
