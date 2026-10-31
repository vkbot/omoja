package com.google.android.material.tabs;

import a3.a;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TabItem extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f1357b;
    public final Drawable c;
    public final int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.I);
        this.f1357b = tintTypedArrayObtainStyledAttributes.getText(2);
        this.c = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        this.d = tintTypedArrayObtainStyledAttributes.getResourceId(1, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}
