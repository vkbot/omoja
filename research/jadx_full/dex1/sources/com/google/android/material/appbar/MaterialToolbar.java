package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.View$MeasureSpec;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import b1.u;
import java.util.ArrayList;
import java.util.Collections;
import s3.l;
import s3.m;
import s3.n;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ImageView$ScaleType[] f1126g = {ImageView$ScaleType.MATRIX, ImageView$ScaleType.FIT_XY, ImageView$ScaleType.FIT_START, ImageView$ScaleType.FIT_CENTER, ImageView$ScaleType.FIT_END, ImageView$ScaleType.CENTER, ImageView$ScaleType.CENTER_CROP, ImageView$ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f1127b;
    public boolean c;
    public boolean d;
    public ImageView$ScaleType e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f1128f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i9 = R$attr.toolbarStyle;
        super(g4.a.a(context, attributeSet, i9, 2132018428), attributeSet, i9);
        Context context2 = getContext();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.B, i9, 2132018428, new int[0]);
        if (typedArrayD.hasValue(2)) {
            setNavigationIconTint(typedArrayD.getColor(2, -1));
        }
        this.c = typedArrayD.getBoolean(4, false);
        this.d = typedArrayD.getBoolean(3, false);
        int i10 = typedArrayD.getInt(1, -1);
        if (i10 >= 0) {
            ImageView$ScaleType[] imageView$ScaleTypeArr = f1126g;
            if (i10 < imageView$ScaleTypeArr.length) {
                this.e = imageView$ScaleTypeArr[i10];
            }
        }
        if (typedArrayD.hasValue(0)) {
            this.f1128f = Boolean.valueOf(typedArrayD.getBoolean(0, false));
        }
        typedArrayD.recycle();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : o3.c.d(background);
        if (colorStateListValueOf != null) {
            k kVar = new k();
            kVar.q(colorStateListValueOf);
            kVar.m(context2);
            kVar.p(getElevation());
            setBackground(kVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i9 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i10 = measuredWidth2 + i9;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i9, 0), Math.max(i10 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i9 += iMax;
            i10 -= iMax;
            textView.measure(View$MeasureSpec.makeMeasureSpec(i10 - i9, BasicMeasure.EXACTLY), textView.getMeasuredHeightAndState());
        }
        textView.layout(i9, textView.getTop(), i10, textView.getBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ImageView$ScaleType getLogoScaleType() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.f1127b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof k) {
            u.w(this, (k) background);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z8, i9, i10, i11, i12);
        ImageView imageView2 = null;
        if (this.c || this.d) {
            ArrayList arrayListA = n.a(this, getTitle());
            boolean zIsEmpty = arrayListA.isEmpty();
            m mVar = n.f5297a;
            TextView textView = zIsEmpty ? null : (TextView) Collections.min(arrayListA, mVar);
            ArrayList arrayListA2 = n.a(this, getSubtitle());
            TextView textView2 = arrayListA2.isEmpty() ? null : (TextView) Collections.max(arrayListA2, mVar);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i13 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i14 = 0; i14 < getChildCount(); i14++) {
                    View childAt = getChildAt(i14);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i13 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i13 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.c && textView != null) {
                    a(textView, pair);
                }
                if (this.d && textView2 != null) {
                    a(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            for (int i15 = 0; i15 < getChildCount(); i15++) {
                View childAt2 = getChildAt(i15);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f1128f;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView$ScaleType imageView$ScaleType = this.e;
            if (imageView$ScaleType != null) {
                imageView2.setScaleType(imageView$ScaleType);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof k) {
            ((k) background).p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLogoAdjustViewBounds(boolean z8) {
        Boolean bool = this.f1128f;
        if (bool == null || bool.booleanValue() != z8) {
            this.f1128f = Boolean.valueOf(z8);
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLogoScaleType(@NonNull ImageView$ScaleType imageView$ScaleType) {
        if (this.e != imageView$ScaleType) {
            this.e = imageView$ScaleType;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null && this.f1127b != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            drawable.setTint(this.f1127b.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNavigationIconTint(@ColorInt int i9) {
        this.f1127b = Integer.valueOf(i9);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSubtitleCentered(boolean z8) {
        if (this.d != z8) {
            this.d = z8;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTitleCentered(boolean z8) {
        if (this.c != z8) {
            this.c = z8;
            requestLayout();
        }
    }
}
