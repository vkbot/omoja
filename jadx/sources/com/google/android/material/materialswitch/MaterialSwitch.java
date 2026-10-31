package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.ColorUtils;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p154o3.AbstractC2585c;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3203q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialSwitch extends SwitchCompat {

    /* JADX INFO: renamed from: o */
    public static final int[] f2388o = {R.attr.state_with_icon};

    /* JADX INFO: renamed from: b */
    public Drawable f2389b;

    /* JADX INFO: renamed from: c */
    public Drawable f2390c;

    /* JADX INFO: renamed from: d */
    public int f2391d;

    /* JADX INFO: renamed from: e */
    public Drawable f2392e;

    /* JADX INFO: renamed from: f */
    public Drawable f2393f;

    /* JADX INFO: renamed from: g */
    public ColorStateList f2394g;

    /* JADX INFO: renamed from: h */
    public ColorStateList f2395h;

    /* JADX INFO: renamed from: i */
    public PorterDuff.Mode f2396i;

    /* JADX INFO: renamed from: j */
    public ColorStateList f2397j;

    /* JADX INFO: renamed from: k */
    public ColorStateList f2398k;

    /* JADX INFO: renamed from: l */
    public PorterDuff.Mode f2399l;

    /* JADX INFO: renamed from: m */
    public int[] f2400m;

    /* JADX INFO: renamed from: n */
    public int[] f2401n;

    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.materialSwitchStyle, R.style.Widget_Material3_CompoundButton_MaterialSwitch), attributeSet, R.attr.materialSwitchStyle);
        this.f2391d = -1;
        Context context2 = getContext();
        this.f2389b = super.getThumbDrawable();
        this.f2394g = super.getThumbTintList();
        super.setThumbTintList(null);
        this.f2392e = super.getTrackDrawable();
        this.f2397j = super.getTrackTintList();
        super.setTrackTintList(null);
        AbstractC3198l.m5133a(context2, attributeSet, R.attr.materialSwitchStyle, R.style.Widget_Material3_CompoundButton_MaterialSwitch);
        int[] iArr = AbstractC0007a.f46y;
        AbstractC3198l.m5134b(context2, attributeSet, iArr, R.attr.materialSwitchStyle, R.style.Widget_Material3_CompoundButton_MaterialSwitch, new int[0]);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, R.attr.materialSwitchStyle, R.style.Widget_Material3_CompoundButton_MaterialSwitch);
        this.f2390c = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        this.f2391d = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        this.f2395h = tintTypedArrayObtainStyledAttributes.getColorStateList(2);
        int i10 = tintTypedArrayObtainStyledAttributes.getInt(3, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f2396i = AbstractC3203q.m5139b(i10, mode);
        this.f2393f = tintTypedArrayObtainStyledAttributes.getDrawable(4);
        this.f2398k = tintTypedArrayObtainStyledAttributes.getColorStateList(5);
        this.f2399l = AbstractC3203q.m5139b(tintTypedArrayObtainStyledAttributes.getInt(6, -1), mode);
        tintTypedArrayObtainStyledAttributes.recycle();
        setEnforceSwitchWidth(false);
        m1822a();
        m1823b();
    }

    /* JADX INFO: renamed from: c */
    public static void m1821c(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f8) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        drawable.setTint(ColorUtils.blendARGB(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f8));
    }

    /* JADX INFO: renamed from: a */
    public final void m1822a() {
        this.f2389b = AbstractC2585c.m4027b(this.f2389b, this.f2394g, getThumbTintMode());
        this.f2390c = AbstractC2585c.m4027b(this.f2390c, this.f2395h, this.f2396i);
        m1824d();
        Drawable drawable = this.f2389b;
        Drawable drawable2 = this.f2390c;
        int i10 = this.f2391d;
        super.setThumbDrawable(AbstractC2585c.m4026a(drawable, drawable2, i10, i10));
        refreshDrawableState();
    }

    /* JADX INFO: renamed from: b */
    public final void m1823b() {
        this.f2392e = AbstractC2585c.m4027b(this.f2392e, this.f2397j, getTrackTintMode());
        this.f2393f = AbstractC2585c.m4027b(this.f2393f, this.f2398k, this.f2399l);
        m1824d();
        Drawable layerDrawable = this.f2392e;
        if (layerDrawable != null && this.f2393f != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.f2392e, this.f2393f});
        } else if (layerDrawable == null) {
            layerDrawable = this.f2393f;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    /* JADX INFO: renamed from: d */
    public final void m1824d() {
        if (this.f2394g == null && this.f2395h == null && this.f2397j == null && this.f2398k == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f2394g;
        if (colorStateList != null) {
            m1821c(this.f2389b, colorStateList, this.f2400m, this.f2401n, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f2395h;
        if (colorStateList2 != null) {
            m1821c(this.f2390c, colorStateList2, this.f2400m, this.f2401n, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f2397j;
        if (colorStateList3 != null) {
            m1821c(this.f2392e, colorStateList3, this.f2400m, this.f2401n, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f2398k;
        if (colorStateList4 != null) {
            m1821c(this.f2393f, colorStateList4, this.f2400m, this.f2401n, thumbPosition);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.f2389b;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.f2390c;
    }

    @Px
    public int getThumbIconSize() {
        return this.f2391d;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f2395h;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f2396i;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f2394g;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f2393f;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f2398k;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f2399l;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.f2392e;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f2397j;
    }

    @Override // android.view.View
    public final void invalidate() {
        m1824d();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (this.f2390c != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2388o);
        }
        int[] iArr = new int[iArrOnCreateDrawableState.length];
        int i11 = 0;
        for (int i12 : iArrOnCreateDrawableState) {
            if (i12 != 16842912) {
                iArr[i11] = i12;
                i11++;
            }
        }
        this.f2400m = iArr;
        this.f2401n = AbstractC2585c.m4028c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.f2389b = drawable;
        m1822a();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.f2390c = drawable;
        m1822a();
    }

    public void setThumbIconResource(@DrawableRes int i10) {
        setThumbIconDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setThumbIconSize(@Px int i10) {
        if (this.f2391d != i10) {
            this.f2391d = i10;
            m1822a();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f2395h = colorStateList;
        m1822a();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.f2396i = mode;
        m1822a();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f2394g = colorStateList;
        m1822a();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        m1822a();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f2393f = drawable;
        m1823b();
    }

    public void setTrackDecorationResource(@DrawableRes int i10) {
        setTrackDecorationDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f2398k = colorStateList;
        m1823b();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.f2399l = mode;
        m1823b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.f2392e = drawable;
        m1823b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f2397j = colorStateList;
        m1823b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        m1823b();
    }
}
