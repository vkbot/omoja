package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p165p2.C2962e;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;

/* JADX INFO: renamed from: com.google.android.material.datepicker.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1091c {

    /* JADX INFO: renamed from: a */
    public final C2962e f2262a;

    /* JADX INFO: renamed from: b */
    public final C2962e f2263b;

    public C1091c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(AbstractC3517b.m5586c(context, C1103n.class.getCanonicalName(), R.attr.materialCalendarStyle).data, AbstractC0007a.f38q);
        C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(4, 0), context);
        C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(2, 0), context);
        C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(3, 0), context);
        C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(5, 0), context);
        ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 7);
        this.f2262a = C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(9, 0), context);
        C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(8, 0), context);
        this.f2263b = C2962e.m4748n(typedArrayObtainStyledAttributes.getResourceId(10, 0), context);
        new Paint().setColor(colorStateListM5587a.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
