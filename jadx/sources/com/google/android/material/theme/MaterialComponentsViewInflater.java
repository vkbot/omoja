package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.C0148R;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.CompoundButtonCompat;
import com.example.navistart.R;
import com.google.android.material.button.MaterialButton;
import p004a3.AbstractC0007a;
import p051e4.C1490w;
import p061f4.C1537a;
import p071g4.AbstractC1618a;
import p112k3.C2041c;
import p192s3.AbstractC3198l;
import p219v3.C3335a;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C1490w(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new C2041c(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        int i10 = C0148R.attr.radioButtonStyle;
        C3335a c3335a = new C3335a(AbstractC1618a.m2696a(context, attributeSet, i10, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet, i10);
        Context context2 = c3335a.getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f43v, i10, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayM5136d.hasValue(0)) {
            CompoundButtonCompat.setButtonTintList(c3335a, AbstractC3518c.m5587a(context2, typedArrayM5136d, 0));
        }
        c3335a.f9752c = typedArrayM5136d.getBoolean(1, false);
        typedArrayM5136d.recycle();
        return c3335a;
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        C1537a c1537a = new C1537a(AbstractC1618a.m2696a(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = c1537a.getContext();
        if (AbstractC3517b.m5585b(context2, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = AbstractC0007a.f9A;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
            int iM2632a = C1537a.m2632a(context2, typedArrayObtainStyledAttributes, 1, 2);
            typedArrayObtainStyledAttributes.recycle();
            if (iM2632a == -1) {
                TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, AbstractC0007a.f47z);
                    int iM2632a2 = C1537a.m2632a(c1537a.getContext(), typedArrayObtainStyledAttributes3, 2, 4);
                    typedArrayObtainStyledAttributes3.recycle();
                    if (iM2632a2 >= 0) {
                        c1537a.setLineHeight(iM2632a2);
                    }
                }
            }
        }
        return c1537a;
    }
}
