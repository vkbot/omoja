package b4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View$MeasureSpec;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import s3.q;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class i extends FrameLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h f317k = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f318b;
    public int c;
    public final float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff$Mode f322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f323j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        Drawable drawableWrap;
        super(g4.a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, a3.a.G);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setElevation(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.c = typedArrayObtainStyledAttributes.getInt(2, 0);
        if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
            this.f318b = o.c(context2, attributeSet, 0, 0).a();
        }
        this.d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(w3.c.a(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(q.b(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff$Mode.SRC_IN));
        this.e = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.f319f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f320g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f317k);
        setFocusable(true);
        if (getBackground() == null) {
            int iC = m3.a.c(getBackgroundOverlayColorAlpha(), m3.a.a(2130903359, this), m3.a.a(2130903337, this));
            o oVar = this.f318b;
            if (oVar != null) {
                Handler handler = j.f324b;
                z3.k kVar = new z3.k(oVar);
                kVar.q(ColorStateList.valueOf(iC));
                drawable = kVar;
            } else {
                Resources resources = getResources();
                Handler handler2 = j.f324b;
                float dimension = resources.getDimension(2131100636);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(iC);
                drawable = gradientDrawable;
            }
            if (this.f321h != null) {
                drawableWrap = DrawableCompat.wrap(drawable);
                drawableWrap.setTintList(this.f321h);
            } else {
                drawableWrap = DrawableCompat.wrap(drawable);
            }
            setBackground(drawableWrap);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getActionTextColorAlpha() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAnimationMode() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBackgroundOverlayColorAlpha() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxInlineActionWidth() {
        return this.f320g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxWidth() {
        return this.f319f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestApplyInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int i11 = this.f319f;
        if (i11 <= 0 || getMeasuredWidth() <= i11) {
            return;
        }
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY), i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnimationMode(int i9) {
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackground(@Nullable Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        if (drawable != null && this.f321h != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            drawable.setTintList(this.f321h);
            drawable.setTintMode(this.f322i);
        }
        super.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f321h = colorStateList;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            drawableWrap.setTintList(colorStateList);
            drawableWrap.setTintMode(this.f322i);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        this.f322i = porterDuff$Mode;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            drawableWrap.setTintMode(porterDuff$Mode);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super.setLayoutParams(viewGroup$LayoutParams);
        if (this.f323j || !(viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams)) {
            return;
        }
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) viewGroup$LayoutParams;
        new Rect(viewGroup$MarginLayoutParams.leftMargin, viewGroup$MarginLayoutParams.topMargin, viewGroup$MarginLayoutParams.rightMargin, viewGroup$MarginLayoutParams.bottomMargin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setOnClickListener(@Nullable View$OnClickListener view$OnClickListener) {
        setOnTouchListener(view$OnClickListener != null ? null : f317k);
        super.setOnClickListener(view$OnClickListener);
    }

    private void setBaseTransientBottomBar(j jVar) {
    }
}
