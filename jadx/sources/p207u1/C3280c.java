package p207u1;

import android.text.Editable;
import android.text.TextWatcher;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: u1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3280c implements TextWatcher {
    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        try {
            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{14, 0, -104, -118, 1, 17, 93, -25, 44, 23, -104, -122, 18, 109, 121, -15, 39, 12, -109, -80, 15, 54, 74, -25, 38}, new byte[]{67, 101, -4, -29, 96, 67, 56, -124}), Integer.parseInt(charSequence.toString()));
        } catch (Exception unused) {
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
