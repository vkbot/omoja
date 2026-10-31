package k3;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton$OnCheckedChangeListener;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.widget.CompoundButtonCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.bumptech.glide.g;
import java.util.Iterator;
import java.util.LinkedHashSet;
import s3.l;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends AppCompatCheckBox {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f3173v = {2130904329};
    public static final int[] w = {2130904328};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[][] f3174x = {new int[]{R$attr.state_enabled, 2130904328}, new int[]{R$attr.state_enabled, R$attr.state_checked}, new int[]{R$attr.state_enabled, -16842912}, new int[]{-16842910, R$attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f3175y = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f3176b;
    public final LinkedHashSet c;
    public ColorStateList d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3177f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3178g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f3179h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f3180i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f3181j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3182k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3183l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f3184m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public PorterDuff$Mode f3185n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3186o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f3187p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3188q;
    public CharSequence r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CompoundButton$OnCheckedChangeListener f3189s;
    public final AnimatedVectorDrawableCompat t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final a f3190u;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Illegal instructions before constructor call */
    public c(Context context, AttributeSet attributeSet) {
        int i9 = androidx.appcompat.R$attr.checkboxStyle;
        super(g4.a.a(context, attributeSet, i9, 2132018352), attributeSet, i9);
        this.f3176b = new LinkedHashSet();
        this.c = new LinkedHashSet();
        this.t = AnimatedVectorDrawableCompat.create(getContext(), 2131165606);
        this.f3190u = new a(this);
        Context context2 = getContext();
        this.f3180i = CompoundButtonCompat.getButtonDrawable(this);
        this.f3183l = getSuperButtonTintList();
        setSupportButtonTintList(null);
        l.a(context2, attributeSet, i9, 2132018352);
        int[] iArr = a3.a.t;
        l.b(context2, attributeSet, iArr, i9, 2132018352, new int[0]);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, i9, 2132018352);
        this.f3181j = tintTypedArrayObtainStyledAttributes.getDrawable(2);
        if (this.f3180i != null && w3.b.b(context2, 2130903752, false)) {
            int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(0, 0);
            int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == f3175y && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.f3180i = AppCompatResources.getDrawable(context2, 2131165605);
                this.f3182k = true;
                if (this.f3181j == null) {
                    this.f3181j = AppCompatResources.getDrawable(context2, 2131165607);
                }
            }
        }
        this.f3184m = w3.c.b(context2, tintTypedArrayObtainStyledAttributes, 3);
        this.f3185n = q.b(tintTypedArrayObtainStyledAttributes.getInt(4, -1), PorterDuff$Mode.SRC_IN);
        this.e = tintTypedArrayObtainStyledAttributes.getBoolean(10, false);
        this.f3177f = tintTypedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f3178g = tintTypedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f3179h = tintTypedArrayObtainStyledAttributes.getText(8);
        if (tintTypedArrayObtainStyledAttributes.hasValue(7)) {
            setCheckedState(tintTypedArrayObtainStyledAttributes.getInt(7, 0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private String getButtonStateDescription() {
        int i9 = this.f3186o;
        if (i9 == 1) {
            return getResources().getString(2131952362);
        }
        return i9 == 0 ? getResources().getString(2131952364) : getResources().getString(2131952363);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.d == null) {
            int iA = m3.a.a(androidx.appcompat.R$attr.colorControlActivated, this);
            int iA2 = m3.a.a(androidx.appcompat.R$attr.colorError, this);
            int iA3 = m3.a.a(2130903359, this);
            int iA4 = m3.a.a(2130903337, this);
            this.d = new ColorStateList(f3174x, new int[]{m3.a.c(1.0f, iA3, iA2), m3.a.c(1.0f, iA3, iA), m3.a.c(0.54f, iA3, iA4), m3.a.c(0.38f, iA3, iA4), m3.a.c(0.38f, iA3, iA4)});
        }
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f3183l;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.f3180i = o3.c.b(this.f3180i, this.f3183l, CompoundButtonCompat.getButtonTintMode(this));
        this.f3181j = o3.c.b(this.f3181j, this.f3184m, this.f3185n);
        if (this.f3182k) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.t;
            if (animatedVectorDrawableCompat != null) {
                a aVar = this.f3190u;
                animatedVectorDrawableCompat.unregisterAnimationCallback(aVar);
                animatedVectorDrawableCompat.registerAnimationCallback(aVar);
            }
            Drawable drawable = this.f3180i;
            if ((drawable instanceof AnimatedStateListDrawable) && animatedVectorDrawableCompat != null) {
                ((AnimatedStateListDrawable) drawable).addTransition(2131296633, 2131297693, animatedVectorDrawableCompat, false);
                ((AnimatedStateListDrawable) this.f3180i).addTransition(2131296869, 2131297693, animatedVectorDrawableCompat, false);
            }
        }
        Drawable drawable2 = this.f3180i;
        if (drawable2 != null && (colorStateList2 = this.f3183l) != null) {
            drawable2.setTintList(colorStateList2);
        }
        Drawable drawable3 = this.f3181j;
        if (drawable3 != null && (colorStateList = this.f3184m) != null) {
            drawable3.setTintList(colorStateList);
        }
        super.setButtonDrawable(o3.c.a(this.f3180i, this.f3181j, -1, -1));
        refreshDrawableState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f3180i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f3181j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f3184m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PorterDuff$Mode getButtonIconTintMode() {
        return this.f3185n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f3183l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCheckedState() {
        return this.f3186o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f3179h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f3186o == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e && this.f3183l == null && this.f3184m == null) {
            setUseMaterialThemeColors(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3173v);
        }
        if (this.f3178g) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, w);
        }
        this.f3187p = o3.c.c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f3177f || !TextUtils.isEmpty(getText()) || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) == null) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f3178g) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f3179h));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setCheckedState(bVar.f3172b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f3172b = getCheckedState();
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i9) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f3181j = drawable;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonIconDrawableResource(@DrawableRes int i9) {
        setButtonIconDrawable(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3184m == colorStateList) {
            return;
        }
        this.f3184m = colorStateList;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonIconTintMode(@NonNull PorterDuff$Mode porterDuff$Mode) {
        if (this.f3185n == porterDuff$Mode) {
            return;
        }
        this.f3185n = porterDuff$Mode;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3183l == colorStateList) {
            return;
        }
        this.f3183l = colorStateList;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        setSupportButtonTintMode(porterDuff$Mode);
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCenterIfNoTextEnabled(boolean z8) {
        this.f3177f = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z8) {
        setCheckedState(z8 ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedState(int i9) {
        AutofillManager autofillManager;
        CompoundButton$OnCheckedChangeListener compoundButton$OnCheckedChangeListener;
        if (this.f3186o != i9) {
            this.f3186o = i9;
            super.setChecked(i9 == 1);
            refreshDrawableState();
            int i10 = Build$VERSION.SDK_INT;
            if (i10 >= 30 && this.r == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f3188q) {
                return;
            }
            this.f3188q = true;
            LinkedHashSet linkedHashSet = this.c;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw g.b(it);
                }
            }
            if (this.f3186o != 2 && (compoundButton$OnCheckedChangeListener = this.f3189s) != null) {
                compoundButton$OnCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i10 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f3188q = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f3179h = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorAccessibilityLabelResource(@StringRes int i9) {
        setErrorAccessibilityLabel(i9 != 0 ? getResources().getText(i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorShown(boolean z8) {
        if (this.f3178g == z8) {
            return;
        }
        this.f3178g = z8;
        refreshDrawableState();
        Iterator it = this.f3176b.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton$OnCheckedChangeListener compoundButton$OnCheckedChangeListener) {
        this.f3189s = compoundButton$OnCheckedChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.view.View
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.r = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build$VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseMaterialThemeColors(boolean z8) {
        this.e = z8;
        if (z8) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f3180i = drawable;
        this.f3182k = false;
        a();
    }
}
