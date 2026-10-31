package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.button.MaterialButton;
import e4.w;
import k3.c;
import s3.l;
import v3.a;
import w3.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new w(context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        int i9 = R$attr.radioButtonStyle;
        a aVar = new a(g4.a.a(context, attributeSet, i9, 2132018353), attributeSet, i9);
        Context context2 = aVar.getContext();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.f23v, i9, 2132018353, new int[0]);
        if (typedArrayD.hasValue(0)) {
            CompoundButtonCompat.setButtonTintList(aVar, w3.c.a(context2, typedArrayD, 0));
        }
        aVar.c = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        f4.a aVar = new f4.a(g4.a.a(context, attributeSet, android.R$attr.textViewStyle, 0), attributeSet, android.R$attr.textViewStyle);
        Context context2 = aVar.getContext();
        if (b.b(context2, 2130904493, true)) {
            Resources$Theme theme = context2.getTheme();
            int[] iArr = a3.a.A;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R$attr.textViewStyle, 0);
            int iA = f4.a.a(context2, typedArrayObtainStyledAttributes, 1, 2);
            typedArrayObtainStyledAttributes.recycle();
            if (iA == -1) {
                TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R$attr.textViewStyle, 0);
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, a3.a.f26z);
                    int iA2 = f4.a.a(aVar.getContext(), typedArrayObtainStyledAttributes3, 2, 4);
                    typedArrayObtainStyledAttributes3.recycle();
                    if (iA2 >= 0) {
                        aVar.setLineHeight(iA2);
                    }
                }
            }
        }
        return aVar;
    }
}
