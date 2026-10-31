package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p192s3.AbstractC3198l;
import p228w3.AbstractC3518c;
import p258z3.C3725k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialDivider extends View {

    /* JADX INFO: renamed from: b */
    public final C3725k f2346b;

    /* JADX INFO: renamed from: c */
    public int f2347c;

    /* JADX INFO: renamed from: d */
    public int f2348d;

    /* JADX INFO: renamed from: e */
    public int f2349e;

    /* JADX INFO: renamed from: f */
    public int f2350f;

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider), attributeSet, R.attr.materialDividerStyle);
        Context context2 = getContext();
        this.f2346b = new C3725k();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f42u, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f2347c = typedArrayM5136d.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f2349e = typedArrayM5136d.getDimensionPixelOffset(2, 0);
        this.f2350f = typedArrayM5136d.getDimensionPixelOffset(1, 0);
        setDividerColor(AbstractC3518c.m5587a(context2, typedArrayM5136d, 0).getDefaultColor());
        typedArrayM5136d.recycle();
    }

    public int getDividerColor() {
        return this.f2348d;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f2350f;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f2349e;
    }

    public int getDividerThickness() {
        return this.f2347c;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int i10;
        super.onDraw(canvas);
        boolean z9 = getLayoutDirection() == 1;
        int i11 = z9 ? this.f2350f : this.f2349e;
        if (z9) {
            width = getWidth();
            i10 = this.f2349e;
        } else {
            width = getWidth();
            i10 = this.f2350f;
        }
        int i12 = width - i10;
        int bottom = getBottom() - getTop();
        C3725k c3725k = this.f2346b;
        c3725k.setBounds(i11, 0, i12, bottom);
        c3725k.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f2347c;
            if (i12 > 0 && measuredHeight != i12) {
                measuredHeight = i12;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(@ColorInt int i10) {
        if (this.f2348d != i10) {
            this.f2348d = i10;
            this.f2346b.m5948q(ColorStateList.valueOf(i10));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i10) {
        setDividerColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.f2350f = i10;
    }

    public void setDividerInsetEndResource(@DimenRes int i10) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(@Px int i10) {
        this.f2349e = i10;
    }

    public void setDividerInsetStartResource(@DimenRes int i10) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(@Px int i10) {
        if (this.f2347c != i10) {
            this.f2347c = i10;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i10) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i10));
    }
}
