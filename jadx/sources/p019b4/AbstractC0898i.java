package p019b4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p134m3.AbstractC2381a;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3518c;
import p258z3.C3725k;
import p258z3.C3729o;

/* JADX INFO: renamed from: b4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0898i extends FrameLayout {

    /* JADX INFO: renamed from: k */
    public static final ViewOnTouchListenerC0897h f679k = new ViewOnTouchListenerC0897h();

    /* JADX INFO: renamed from: b */
    public final C3729o f680b;

    /* JADX INFO: renamed from: c */
    public int f681c;

    /* JADX INFO: renamed from: d */
    public final float f682d;

    /* JADX INFO: renamed from: e */
    public final float f683e;

    /* JADX INFO: renamed from: f */
    public final int f684f;

    /* JADX INFO: renamed from: g */
    public final int f685g;

    /* JADX INFO: renamed from: h */
    public ColorStateList f686h;

    /* JADX INFO: renamed from: i */
    public PorterDuff.Mode f687i;

    /* JADX INFO: renamed from: j */
    public boolean f688j;

    public AbstractC0898i(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        Drawable drawableWrap;
        super(AbstractC1618a.m2696a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, AbstractC0007a.f15G);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setElevation(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.f681c = typedArrayObtainStyledAttributes.getInt(2, 0);
        if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
            this.f680b = C3729o.m5959c(context2, attributeSet, 0, 0).m5956a();
        }
        this.f682d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(AbstractC3518c.m5587a(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(AbstractC3203q.m5139b(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f683e = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.f684f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f685g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f679k);
        setFocusable(true);
        if (getBackground() == null) {
            int iM3748c = AbstractC2381a.m3748c(getBackgroundOverlayColorAlpha(), AbstractC2381a.m3746a(R.attr.colorSurface, this), AbstractC2381a.m3746a(R.attr.colorOnSurface, this));
            C3729o c3729o = this.f680b;
            if (c3729o != null) {
                Handler handler = AbstractC0899j.f689b;
                C3725k c3725k = new C3725k(c3729o);
                c3725k.m5948q(ColorStateList.valueOf(iM3748c));
                drawable = c3725k;
            } else {
                Resources resources = getResources();
                Handler handler2 = AbstractC0899j.f689b;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(iM3748c);
                drawable = gradientDrawable;
            }
            if (this.f686h != null) {
                drawableWrap = DrawableCompat.wrap(drawable);
                drawableWrap.setTintList(this.f686h);
            } else {
                drawableWrap = DrawableCompat.wrap(drawable);
            }
            setBackground(drawableWrap);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f683e;
    }

    public int getAnimationMode() {
        return this.f681c;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f682d;
    }

    public int getMaxInlineActionWidth() {
        return this.f685g;
    }

    public int getMaxWidth() {
        return this.f684f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int i12 = this.f684f;
        if (i12 <= 0 || getMeasuredWidth() <= i12) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, BasicMeasure.EXACTLY), i11);
    }

    public void setAnimationMode(int i10) {
        this.f681c = i10;
    }

    @Override // android.view.View
    public void setBackground(@Nullable Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        if (drawable != null && this.f686h != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            drawable.setTintList(this.f686h);
            drawable.setTintMode(this.f687i);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f686h = colorStateList;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            drawableWrap.setTintList(colorStateList);
            drawableWrap.setTintMode(this.f687i);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        this.f687i = mode;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            drawableWrap.setTintMode(mode);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (this.f688j || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f679k);
        super.setOnClickListener(onClickListener);
    }

    private void setBaseTransientBottomBar(AbstractC0899j abstractC0899j) {
    }
}
