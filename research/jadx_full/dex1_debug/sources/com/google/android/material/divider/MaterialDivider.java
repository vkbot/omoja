package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import g4.a;
import s3.l;
import w3.c;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialDivider extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f1295b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1296f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130903954, 2132018385), attributeSet, 2130903954);
        Context context2 = getContext();
        this.f1295b = new k();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.f22u, 2130903954, 2132018385, new int[0]);
        this.c = typedArrayD.getDimensionPixelSize(3, getResources().getDimensionPixelSize(2131100445));
        this.e = typedArrayD.getDimensionPixelOffset(2, 0);
        this.f1296f = typedArrayD.getDimensionPixelOffset(1, 0);
        setDividerColor(c.a(context2, typedArrayD, 0).getDefaultColor());
        typedArrayD.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDividerColor() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getDividerInsetEnd() {
        return this.f1296f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getDividerInsetStart() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDividerThickness() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int i9;
        super.onDraw(canvas);
        boolean z8 = getLayoutDirection() == 1;
        int i10 = z8 ? this.f1296f : this.e;
        if (z8) {
            width = getWidth();
            i9 = this.e;
        } else {
            width = getWidth();
            i9 = this.f1296f;
        }
        int i11 = width - i9;
        int bottom = getBottom() - getTop();
        k kVar = this.f1295b;
        kVar.setBounds(i10, 0, i11, bottom);
        kVar.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int mode = View$MeasureSpec.getMode(i10);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i11 = this.c;
            if (i11 > 0 && measuredHeight != i11) {
                measuredHeight = i11;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerColor(@ColorInt int i9) {
        if (this.d != i9) {
            this.d = i9;
            this.f1295b.q(ColorStateList.valueOf(i9));
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerColorResource(@ColorRes int i9) {
        setDividerColor(ContextCompat.getColor(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerInsetEnd(@Px int i9) {
        this.f1296f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerInsetEndResource(@DimenRes int i9) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerInsetStart(@Px int i9) {
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerInsetStartResource(@DimenRes int i9) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerThickness(@Px int i9) {
        if (this.c != i9) {
            this.c = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerThicknessResource(@DimenRes int i9) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i9));
    }
}
