package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
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
import g4.a;
import o3.c;
import s3.l;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialSwitch extends SwitchCompat {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f1326o = {2130904332};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable f1327b;
    public Drawable c;
    public int d;
    public Drawable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f1328f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1329g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f1330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff$Mode f1331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f1332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f1333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PorterDuff$Mode f1334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f1335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f1336n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130903970, 2132018171), attributeSet, 2130903970);
        this.d = -1;
        Context context2 = getContext();
        this.f1327b = super.getThumbDrawable();
        this.f1329g = super.getThumbTintList();
        super.setThumbTintList(null);
        this.e = super.getTrackDrawable();
        this.f1332j = super.getTrackTintList();
        super.setTrackTintList(null);
        l.a(context2, attributeSet, 2130903970, 2132018171);
        int[] iArr = a3.a.f25y;
        l.b(context2, attributeSet, iArr, 2130903970, 2132018171, new int[0]);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, 2130903970, 2132018171);
        this.c = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        this.d = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        this.f1330h = tintTypedArrayObtainStyledAttributes.getColorStateList(2);
        int i9 = tintTypedArrayObtainStyledAttributes.getInt(3, -1);
        PorterDuff$Mode porterDuff$Mode = PorterDuff$Mode.SRC_IN;
        this.f1331i = q.b(i9, porterDuff$Mode);
        this.f1328f = tintTypedArrayObtainStyledAttributes.getDrawable(4);
        this.f1333k = tintTypedArrayObtainStyledAttributes.getColorStateList(5);
        this.f1334l = q.b(tintTypedArrayObtainStyledAttributes.getInt(6, -1), porterDuff$Mode);
        tintTypedArrayObtainStyledAttributes.recycle();
        setEnforceSwitchWidth(false);
        a();
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f8) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        drawable.setTint(ColorUtils.blendARGB(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        this.f1327b = c.b(this.f1327b, this.f1329g, getThumbTintMode());
        this.c = c.b(this.c, this.f1330h, this.f1331i);
        d();
        Drawable drawable = this.f1327b;
        Drawable drawable2 = this.c;
        int i9 = this.d;
        super.setThumbDrawable(c.a(drawable, drawable2, i9, i9));
        refreshDrawableState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        this.e = c.b(this.e, this.f1332j, getTrackTintMode());
        this.f1328f = c.b(this.f1328f, this.f1333k, this.f1334l);
        d();
        Drawable layerDrawable = this.e;
        if (layerDrawable != null && this.f1328f != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.e, this.f1328f});
        } else if (layerDrawable == null) {
            layerDrawable = this.f1328f;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        if (this.f1329g == null && this.f1330h == null && this.f1332j == null && this.f1333k == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f1329g;
        if (colorStateList != null) {
            c(this.f1327b, colorStateList, this.f1335m, this.f1336n, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f1330h;
        if (colorStateList2 != null) {
            c(this.c, colorStateList2, this.f1335m, this.f1336n, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f1332j;
        if (colorStateList3 != null) {
            c(this.e, colorStateList3, this.f1335m, this.f1336n, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f1333k;
        if (colorStateList4 != null) {
            c(this.f1328f, colorStateList4, this.f1335m, this.f1336n, thumbPosition);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.f1327b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getThumbIconSize() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f1330h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PorterDuff$Mode getThumbIconTintMode() {
        return this.f1331i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1329g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f1328f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f1333k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PorterDuff$Mode getTrackDecorationTintMode() {
        return this.f1334l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1332j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void invalidate() {
        d();
        super.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 1);
        if (this.c != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1326o);
        }
        int[] iArr = new int[iArrOnCreateDrawableState.length];
        int i10 = 0;
        for (int i11 : iArrOnCreateDrawableState) {
            if (i11 != 16842912) {
                iArr[i10] = i11;
                i10++;
            }
        }
        this.f1335m = iArr;
        this.f1336n = c.c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.f1327b = drawable;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.c = drawable;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setThumbIconResource(@DrawableRes int i9) {
        setThumbIconDrawable(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setThumbIconSize(@Px int i9) {
        if (this.d != i9) {
            this.d = i9;
            a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f1330h = colorStateList;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setThumbIconTintMode(@NonNull PorterDuff$Mode porterDuff$Mode) {
        this.f1331i = porterDuff$Mode;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1329g = colorStateList;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        super.setThumbTintMode(porterDuff$Mode);
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f1328f = drawable;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrackDecorationResource(@DrawableRes int i9) {
        setTrackDecorationDrawable(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f1333k = colorStateList;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrackDecorationTintMode(@NonNull PorterDuff$Mode porterDuff$Mode) {
        this.f1334l = porterDuff$Mode;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.e = drawable;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1332j = colorStateList;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        super.setTrackTintMode(porterDuff$Mode);
        b();
    }
}
