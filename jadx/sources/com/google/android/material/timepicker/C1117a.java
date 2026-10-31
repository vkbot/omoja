package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import p192s3.AbstractC3197k;

/* JADX INFO: renamed from: com.google.android.material.timepicker.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1117a extends AbstractC3197k {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ChipTextInputComboView f2597b;

    public C1117a(ChipTextInputComboView chipTextInputComboView) {
        this.f2597b = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean zIsEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.f2597b;
        Chip chip = chipTextInputComboView.f2564b;
        if (zIsEmpty) {
            chip.setText(ChipTextInputComboView.m1872a(chipTextInputComboView, "00"));
            return;
        }
        String strM1872a = ChipTextInputComboView.m1872a(chipTextInputComboView, editable);
        if (TextUtils.isEmpty(strM1872a)) {
            strM1872a = ChipTextInputComboView.m1872a(chipTextInputComboView, "00");
        }
        chip.setText(strM1872a);
    }
}
