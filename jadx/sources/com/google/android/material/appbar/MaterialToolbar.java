package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0148R;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.Collections;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p071g4.AbstractC1618a;
import p154o3.AbstractC2585c;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3200n;
import p192s3.C3199m;
import p258z3.C3725k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: g */
    public static final ImageView.ScaleType[] f2073g = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: b */
    public Integer f2074b;

    /* JADX INFO: renamed from: c */
    public boolean f2075c;

    /* JADX INFO: renamed from: d */
    public boolean f2076d;

    /* JADX INFO: renamed from: e */
    public ImageView.ScaleType f2077e;

    /* JADX INFO: renamed from: f */
    public Boolean f2078f;

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10 = C0148R.attr.toolbarStyle;
        super(AbstractC1618a.m2696a(context, attributeSet, i10, R.style.Widget_MaterialComponents_Toolbar), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f10B, i10, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayM5136d.hasValue(2)) {
            setNavigationIconTint(typedArrayM5136d.getColor(2, -1));
        }
        this.f2075c = typedArrayM5136d.getBoolean(4, false);
        this.f2076d = typedArrayM5136d.getBoolean(3, false);
        int i11 = typedArrayM5136d.getInt(1, -1);
        if (i11 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f2073g;
            if (i11 < scaleTypeArr.length) {
                this.f2077e = scaleTypeArr[i11];
            }
        }
        if (typedArrayM5136d.hasValue(0)) {
            this.f2078f = Boolean.valueOf(typedArrayM5136d.getBoolean(0, false));
        }
        typedArrayM5136d.recycle();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : AbstractC2585c.m4029d(background);
        if (colorStateListValueOf != null) {
            C3725k c3725k = new C3725k();
            c3725k.m5948q(colorStateListValueOf);
            c3725k.m5944m(context2);
            c3725k.m5947p(getElevation());
            setBackground(c3725k);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1749a(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i10, 0), Math.max(i11 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i10 += iMax;
            i11 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, BasicMeasure.EXACTLY), textView.getMeasuredHeightAndState());
        }
        textView.layout(i10, textView.getTop(), i11, textView.getBottom());
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.f2077e;
    }

    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.f2074b;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            AbstractC0880u.m1006w(this, (C3725k) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z9, i10, i11, i12, i13);
        ImageView imageView2 = null;
        if (this.f2075c || this.f2076d) {
            ArrayList arrayListM5137a = AbstractC3200n.m5137a(this, getTitle());
            boolean zIsEmpty = arrayListM5137a.isEmpty();
            C3199m c3199m = AbstractC3200n.f9372a;
            TextView textView = zIsEmpty ? null : (TextView) Collections.min(arrayListM5137a, c3199m);
            ArrayList arrayListM5137a2 = AbstractC3200n.m5137a(this, getSubtitle());
            TextView textView2 = arrayListM5137a2.isEmpty() ? null : (TextView) Collections.max(arrayListM5137a2, c3199m);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i14 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i15 = 0; i15 < getChildCount(); i15++) {
                    View childAt = getChildAt(i15);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i14 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i14 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f2075c && textView != null) {
                    m1749a(textView, pair);
                }
                if (this.f2076d && textView2 != null) {
                    m1749a(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            for (int i16 = 0; i16 < getChildCount(); i16++) {
                View childAt2 = getChildAt(i16);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f2078f;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f2077e;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            ((C3725k) background).m5947p(f8);
        }
    }

    public void setLogoAdjustViewBounds(boolean z9) {
        Boolean bool = this.f2078f;
        if (bool == null || bool.booleanValue() != z9) {
            this.f2078f = Boolean.valueOf(z9);
            requestLayout();
        }
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.f2077e != scaleType) {
            this.f2077e = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null && this.f2074b != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            drawable.setTint(this.f2074b.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.f2074b = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z9) {
        if (this.f2076d != z9) {
            this.f2076d = z9;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z9) {
        if (this.f2075c != z9) {
            this.f2075c = z9;
            requestLayout();
        }
    }
}
