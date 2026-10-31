package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p2.e f1240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p2.e f1241b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(w3.b.c(context, n.class.getCanonicalName(), 2130903943).data, a3.a.f20q);
        p2.e.n(typedArrayObtainStyledAttributes.getResourceId(4, 0), context);
        p2.e.n(typedArrayObtainStyledAttributes.getResourceId(2, 0), context);
        p2.e.n(typedArrayObtainStyledAttributes.getResourceId(3, 0), context);
        p2.e.n(typedArrayObtainStyledAttributes.getResourceId(5, 0), context);
        ColorStateList colorStateListA = w3.c.a(context, typedArrayObtainStyledAttributes, 7);
        this.f1240a = p2.e.n(typedArrayObtainStyledAttributes.getResourceId(9, 0), context);
        p2.e.n(typedArrayObtainStyledAttributes.getResourceId(8, 0), context);
        this.f1241b = p2.e.n(typedArrayObtainStyledAttributes.getResourceId(10, 0), context);
        new Paint().setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
