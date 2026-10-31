package com.google.android.material.datepicker;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: renamed from: com.google.android.material.datepicker.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1104o implements OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2295b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ View f2296c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f2297d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f2298e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f2299f;

    public C1104o(View view, int i10, int i11, int i12, int i13) {
        this.f2295b = i10;
        this.f2296c = view;
        this.f2297d = i11;
        this.f2298e = i12;
        this.f2299f = i13;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        View view2 = this.f2296c;
        int i10 = this.f2295b;
        if (i10 >= 0) {
            view2.getLayoutParams().height = i10 + insets.top;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(this.f2297d + insets.left, this.f2298e + insets.top, this.f2299f + insets.right, view2.getPaddingBottom());
        return windowInsetsCompat;
    }
}
