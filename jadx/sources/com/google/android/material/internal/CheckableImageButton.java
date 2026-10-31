package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0148R;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.ViewCompat;
import p192s3.C3187a;
import p192s3.C3188b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* JADX INFO: renamed from: e */
    public static final int[] f2370e = {R.attr.state_checked};

    /* JADX INFO: renamed from: b */
    public boolean f2371b;

    /* JADX INFO: renamed from: c */
    public boolean f2372c;

    /* JADX INFO: renamed from: d */
    public boolean f2373d;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C0148R.attr.imageButtonStyle);
        this.f2372c = true;
        this.f2373d = true;
        ViewCompat.setAccessibilityDelegate(this, new C3187a(0, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2371b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        return this.f2371b ? View.mergeDrawableStates(super.onCreateDrawableState(i10 + 1), f2370e) : super.onCreateDrawableState(i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C3188b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C3188b c3188b = (C3188b) parcelable;
        super.onRestoreInstanceState(c3188b.getSuperState());
        setChecked(c3188b.f9277b);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C3188b c3188b = new C3188b(super.onSaveInstanceState());
        c3188b.f9277b = this.f2371b;
        return c3188b;
    }

    public void setCheckable(boolean z9) {
        if (this.f2372c != z9) {
            this.f2372c = z9;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z9) {
        if (!this.f2372c || this.f2371b == z9) {
            return;
        }
        this.f2371b = z9;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z9) {
        this.f2373d = z9;
    }

    @Override // android.view.View
    public void setPressed(boolean z9) {
        if (this.f2373d) {
            super.setPressed(z9);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2371b);
    }
}
