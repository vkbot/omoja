package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import p004a3.AbstractC0007a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TabItem extends View {

    /* JADX INFO: renamed from: b */
    public final CharSequence f2430b;

    /* JADX INFO: renamed from: c */
    public final Drawable f2431c;

    /* JADX INFO: renamed from: d */
    public final int f2432d;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, AbstractC0007a.f17I);
        this.f2430b = tintTypedArrayObtainStyledAttributes.getText(2);
        this.f2431c = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        this.f2432d = tintTypedArrayObtainStyledAttributes.getResourceId(1, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}
