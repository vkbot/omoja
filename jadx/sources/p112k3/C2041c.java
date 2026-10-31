package p112k3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.appcompat.C0148R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.widget.CompoundButtonCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p134m3.AbstractC2381a;
import p154o3.AbstractC2585c;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;

/* JADX INFO: renamed from: k3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2041c extends AppCompatCheckBox {

    /* JADX INFO: renamed from: v */
    public static final int[] f5566v = {R.attr.state_indeterminate};

    /* JADX INFO: renamed from: w */
    public static final int[] f5567w = {R.attr.state_error};

    /* JADX INFO: renamed from: x */
    public static final int[][] f5568x = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: y */
    public static final int f5569y = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* JADX INFO: renamed from: b */
    public final LinkedHashSet f5570b;

    /* JADX INFO: renamed from: c */
    public final LinkedHashSet f5571c;

    /* JADX INFO: renamed from: d */
    public ColorStateList f5572d;

    /* JADX INFO: renamed from: e */
    public boolean f5573e;

    /* JADX INFO: renamed from: f */
    public boolean f5574f;

    /* JADX INFO: renamed from: g */
    public boolean f5575g;

    /* JADX INFO: renamed from: h */
    public CharSequence f5576h;

    /* JADX INFO: renamed from: i */
    public Drawable f5577i;

    /* JADX INFO: renamed from: j */
    public Drawable f5578j;

    /* JADX INFO: renamed from: k */
    public boolean f5579k;

    /* JADX INFO: renamed from: l */
    public ColorStateList f5580l;

    /* JADX INFO: renamed from: m */
    public ColorStateList f5581m;

    /* JADX INFO: renamed from: n */
    public PorterDuff.Mode f5582n;

    /* JADX INFO: renamed from: o */
    public int f5583o;

    /* JADX INFO: renamed from: p */
    public int[] f5584p;

    /* JADX INFO: renamed from: q */
    public boolean f5585q;

    /* JADX INFO: renamed from: r */
    public CharSequence f5586r;

    /* JADX INFO: renamed from: s */
    public CompoundButton.OnCheckedChangeListener f5587s;

    /* JADX INFO: renamed from: t */
    public final AnimatedVectorDrawableCompat f5588t;

    /* JADX INFO: renamed from: u */
    public final C2039a f5589u;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2041c(Context context, AttributeSet attributeSet) {
        int i10 = C0148R.attr.checkboxStyle;
        super(AbstractC1618a.m2696a(context, attributeSet, i10, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, i10);
        this.f5570b = new LinkedHashSet();
        this.f5571c = new LinkedHashSet();
        this.f5588t = AnimatedVectorDrawableCompat.create(getContext(), R.drawable.mtrl_checkbox_button_checked_unchecked);
        this.f5589u = new C2039a(this);
        Context context2 = getContext();
        this.f5577i = CompoundButtonCompat.getButtonDrawable(this);
        this.f5580l = getSuperButtonTintList();
        setSupportButtonTintList(null);
        AbstractC3198l.m5133a(context2, attributeSet, i10, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        int[] iArr = AbstractC0007a.f41t;
        AbstractC3198l.m5134b(context2, attributeSet, iArr, i10, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, i10, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        this.f5578j = tintTypedArrayObtainStyledAttributes.getDrawable(2);
        if (this.f5577i != null && AbstractC3517b.m5585b(context2, R.attr.isMaterial3Theme, false)) {
            int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(0, 0);
            int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == f5569y && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.f5577i = AppCompatResources.getDrawable(context2, R.drawable.mtrl_checkbox_button);
                this.f5579k = true;
                if (this.f5578j == null) {
                    this.f5578j = AppCompatResources.getDrawable(context2, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f5581m = AbstractC3518c.m5588b(context2, tintTypedArrayObtainStyledAttributes, 3);
        this.f5582n = AbstractC3203q.m5139b(tintTypedArrayObtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f5573e = tintTypedArrayObtainStyledAttributes.getBoolean(10, false);
        this.f5574f = tintTypedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f5575g = tintTypedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f5576h = tintTypedArrayObtainStyledAttributes.getText(8);
        if (tintTypedArrayObtainStyledAttributes.hasValue(7)) {
            setCheckedState(tintTypedArrayObtainStyledAttributes.getInt(7, 0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        m3139a();
    }

    @NonNull
    private String getButtonStateDescription() {
        int i10 = this.f5583o;
        if (i10 == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        return i10 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f5572d == null) {
            int iM3746a = AbstractC2381a.m3746a(C0148R.attr.colorControlActivated, this);
            int iM3746a2 = AbstractC2381a.m3746a(C0148R.attr.colorError, this);
            int iM3746a3 = AbstractC2381a.m3746a(R.attr.colorSurface, this);
            int iM3746a4 = AbstractC2381a.m3746a(R.attr.colorOnSurface, this);
            this.f5572d = new ColorStateList(f5568x, new int[]{AbstractC2381a.m3748c(1.0f, iM3746a3, iM3746a2), AbstractC2381a.m3748c(1.0f, iM3746a3, iM3746a), AbstractC2381a.m3748c(0.54f, iM3746a3, iM3746a4), AbstractC2381a.m3748c(0.38f, iM3746a3, iM3746a4), AbstractC2381a.m3748c(0.38f, iM3746a3, iM3746a4)});
        }
        return this.f5572d;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f5580l;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    /* JADX INFO: renamed from: a */
    public final void m3139a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.f5577i = AbstractC2585c.m4027b(this.f5577i, this.f5580l, CompoundButtonCompat.getButtonTintMode(this));
        this.f5578j = AbstractC2585c.m4027b(this.f5578j, this.f5581m, this.f5582n);
        if (this.f5579k) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.f5588t;
            if (animatedVectorDrawableCompat != null) {
                C2039a c2039a = this.f5589u;
                animatedVectorDrawableCompat.unregisterAnimationCallback(c2039a);
                animatedVectorDrawableCompat.registerAnimationCallback(c2039a);
            }
            Drawable drawable = this.f5577i;
            if ((drawable instanceof AnimatedStateListDrawable) && animatedVectorDrawableCompat != null) {
                ((AnimatedStateListDrawable) drawable).addTransition(R.id.checked, R.id.unchecked, animatedVectorDrawableCompat, false);
                ((AnimatedStateListDrawable) this.f5577i).addTransition(R.id.indeterminate, R.id.unchecked, animatedVectorDrawableCompat, false);
            }
        }
        Drawable drawable2 = this.f5577i;
        if (drawable2 != null && (colorStateList2 = this.f5580l) != null) {
            drawable2.setTintList(colorStateList2);
        }
        Drawable drawable3 = this.f5578j;
        if (drawable3 != null && (colorStateList = this.f5581m) != null) {
            drawable3.setTintList(colorStateList);
        }
        super.setButtonDrawable(AbstractC2585c.m4026a(this.f5577i, this.f5578j, -1, -1));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f5577i;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f5578j;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f5581m;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f5582n;
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f5580l;
    }

    public int getCheckedState() {
        return this.f5583o;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f5576h;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f5583o == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5573e && this.f5580l == null && this.f5581m == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5566v);
        }
        if (this.f5575g) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5567w);
        }
        this.f5584p = AbstractC2585c.m4028c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f5574f || !TextUtils.isEmpty(getText()) || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f5575g) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f5576h));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C2040b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C2040b c2040b = (C2040b) parcelable;
        super.onRestoreInstanceState(c2040b.getSuperState());
        setCheckedState(c2040b.f5565b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        C2040b c2040b = new C2040b(super.onSaveInstanceState());
        c2040b.f5565b = getCheckedState();
        return c2040b;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i10) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f5578j = drawable;
        m3139a();
    }

    public void setButtonIconDrawableResource(@DrawableRes int i10) {
        setButtonIconDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f5581m == colorStateList) {
            return;
        }
        this.f5581m = colorStateList;
        m3139a();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f5582n == mode) {
            return;
        }
        this.f5582n = mode;
        m3139a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f5580l == colorStateList) {
            return;
        }
        this.f5580l = colorStateList;
        m3139a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        m3139a();
    }

    public void setCenterIfNoTextEnabled(boolean z9) {
        this.f5574f = z9;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z9) {
        setCheckedState(z9 ? 1 : 0);
    }

    public void setCheckedState(int i10) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f5583o != i10) {
            this.f5583o = i10;
            super.setChecked(i10 == 1);
            refreshDrawableState();
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 30 && this.f5586r == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f5585q) {
                return;
            }
            this.f5585q = true;
            LinkedHashSet linkedHashSet = this.f5571c;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw AbstractC1034g.m1295b(it);
                }
            }
            if (this.f5583o != 2 && (onCheckedChangeListener = this.f5587s) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i11 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f5585q = false;
        }
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f5576h = charSequence;
    }

    public void setErrorAccessibilityLabelResource(@StringRes int i10) {
        setErrorAccessibilityLabel(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setErrorShown(boolean z9) {
        if (this.f5575g == z9) {
            return;
        }
        this.f5575g = z9;
        refreshDrawableState();
        Iterator it = this.f5570b.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f5587s = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    @RequiresApi(30)
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.f5586r = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z9) {
        this.f5573e = z9;
        if (z9) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f5577i = drawable;
        this.f5579k = false;
        m3139a();
    }
}
