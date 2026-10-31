package p051e4;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0148R;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.example.navistart.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import java.util.Locale;
import p004a3.AbstractC0007a;
import p071g4.AbstractC1618a;
import p192s3.AbstractC3198l;
import p228w3.AbstractC3518c;
import p258z3.C3725k;

/* JADX INFO: renamed from: e4.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1490w extends AppCompatAutoCompleteTextView {

    /* JADX INFO: renamed from: b */
    public final ListPopupWindow f3665b;

    /* JADX INFO: renamed from: c */
    public final AccessibilityManager f3666c;

    /* JADX INFO: renamed from: d */
    public final Rect f3667d;

    /* JADX INFO: renamed from: e */
    public final int f3668e;

    /* JADX INFO: renamed from: f */
    public final float f3669f;

    /* JADX INFO: renamed from: g */
    public ColorStateList f3670g;

    /* JADX INFO: renamed from: h */
    public int f3671h;

    /* JADX INFO: renamed from: i */
    public ColorStateList f3672i;

    /* JADX WARN: Illegal instructions before constructor call */
    public C1490w(Context context, AttributeSet attributeSet) {
        int i10 = C0148R.attr.autoCompleteTextViewStyle;
        super(AbstractC1618a.m2696a(context, attributeSet, i10, 0), attributeSet, i10);
        this.f3667d = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f34m, i10, C0148R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayM5136d.hasValue(0) && typedArrayM5136d.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f3668e = typedArrayM5136d.getResourceId(3, R.layout.mtrl_auto_complete_simple_item);
        this.f3669f = typedArrayM5136d.getDimensionPixelOffset(1, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (typedArrayM5136d.hasValue(2)) {
            this.f3670g = ColorStateList.valueOf(typedArrayM5136d.getColor(2, 0));
        }
        this.f3671h = typedArrayM5136d.getColor(4, 0);
        this.f3672i = AbstractC3518c.m5587a(context2, typedArrayM5136d, 5);
        this.f3666c = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f3665b = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new C1488u(this));
        if (typedArrayM5136d.hasValue(6)) {
            setSimpleItems(typedArrayM5136d.getResourceId(6, 0));
        }
        typedArrayM5136d.recycle();
    }

    /* JADX INFO: renamed from: b */
    public final TextInputLayout m2571b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m2572c() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f3666c;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) == null) {
            return false;
        }
        for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
            if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        if (m2572c()) {
            this.f3665b.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    @Nullable
    public ColorStateList getDropDownBackgroundTintList() {
        return this.f3670g;
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayoutM2571b = m2571b();
        return (textInputLayoutM2571b == null || !textInputLayoutM2571b.f2496G) ? super.getHint() : textInputLayoutM2571b.getHint();
    }

    public float getPopupElevation() {
        return this.f3669f;
    }

    public int getSimpleItemSelectedColor() {
        return this.f3671h;
    }

    @Nullable
    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f3672i;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutM2571b = m2571b();
        if (textInputLayoutM2571b != null && textInputLayoutM2571b.f2496G && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("meizu")) {
                setHint("");
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3665b.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout textInputLayoutM2571b = m2571b();
            int measuredWidth2 = 0;
            if (adapter != null && textInputLayoutM2571b != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                ListPopupWindow listPopupWindow = this.f3665b;
                int iMin = Math.min(adapter.getCount(), Math.max(0, listPopupWindow.getSelectedItemPosition()) + 15);
                View view = null;
                int iMax = 0;
                for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
                    int itemViewType = adapter.getItemViewType(iMax2);
                    if (itemViewType != measuredWidth2) {
                        view = null;
                        measuredWidth2 = itemViewType;
                    }
                    view = adapter.getView(iMax2, view, textInputLayoutM2571b);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                Drawable background = listPopupWindow.getBackground();
                if (background != null) {
                    Rect rect = this.f3667d;
                    background.getPadding(rect);
                    iMax += rect.left + rect.right;
                }
                measuredWidth2 = textInputLayoutM2571b.getEndIconView().getMeasuredWidth() + iMax;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, measuredWidth2), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z9) {
        if (m2572c()) {
            return;
        }
        super.onWindowFocusChanged(z9);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t) {
        super.setAdapter(t);
        this.f3665b.setAdapter(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f3665b;
        if (listPopupWindow != null) {
            listPopupWindow.setBackgroundDrawable(drawable);
        }
    }

    public void setDropDownBackgroundTint(@ColorInt int i10) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i10));
    }

    public void setDropDownBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f3670g = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof C3725k) {
            ((C3725k) dropDownBackground).m5948q(this.f3670g);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f3665b.setOnItemSelectedListener(getOnItemSelectedListener());
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i10) {
        super.setRawInputType(i10);
        TextInputLayout textInputLayoutM2571b = m2571b();
        if (textInputLayoutM2571b != null) {
            textInputLayoutM2571b.m1866u();
        }
    }

    public void setSimpleItemSelectedColor(int i10) {
        this.f3671h = i10;
        if (getAdapter() instanceof C1489v) {
            ((C1489v) getAdapter()).m2569a();
        }
    }

    public void setSimpleItemSelectedRippleColor(@Nullable ColorStateList colorStateList) {
        this.f3672i = colorStateList;
        if (getAdapter() instanceof C1489v) {
            ((C1489v) getAdapter()).m2569a();
        }
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new C1489v(this, getContext(), this.f3668e, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (m2572c()) {
            this.f3665b.show();
        } else {
            super.showDropDown();
        }
    }

    public void setSimpleItems(@ArrayRes int i10) {
        setSimpleItems(getResources().getStringArray(i10));
    }
}
