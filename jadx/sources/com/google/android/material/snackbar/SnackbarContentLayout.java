package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import p018b3.AbstractC0884a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public TextView f2426b;

    /* JADX INFO: renamed from: c */
    public Button f2427c;

    /* JADX INFO: renamed from: d */
    public final TimeInterpolator f2428d;

    /* JADX INFO: renamed from: e */
    public int f2429e;

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2428d = AbstractC1031d.m1288r(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f662b);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1829a(int i10, int i11, int i12) {
        boolean z9;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z9 = true;
        } else {
            z9 = false;
        }
        if (this.f2426b.getPaddingTop() == i11 && this.f2426b.getPaddingBottom() == i12) {
            return z9;
        }
        TextView textView = this.f2426b;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i11, textView.getPaddingEnd(), i12);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i11, textView.getPaddingRight(), i12);
        return true;
    }

    public Button getActionView() {
        return this.f2427c;
    }

    public TextView getMessageView() {
        return this.f2426b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f2426b = (TextView) findViewById(R.id.snackbar_text);
        this.f2427c = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f2426b.getLayout();
        boolean z9 = layout != null && layout.getLineCount() > 1;
        if (!z9 || this.f2429e <= 0 || this.f2427c.getMeasuredWidth() <= this.f2429e) {
            if (!z9) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!m1829a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!m1829a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f2429e = i10;
    }
}
