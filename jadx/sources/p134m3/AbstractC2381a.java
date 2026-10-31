package p134m3;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import p228w3.AbstractC3517b;

/* JADX INFO: renamed from: m3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2381a {
    /* JADX INFO: renamed from: a */
    public static int m3746a(int i10, View view) {
        Context context = view.getContext();
        TypedValue typedValueM5586c = AbstractC3517b.m5586c(view.getContext(), view.getClass().getCanonicalName(), i10);
        int i11 = typedValueM5586c.resourceId;
        return i11 != 0 ? ContextCompat.getColor(context, i11) : typedValueM5586c.data;
    }

    /* JADX INFO: renamed from: b */
    public static int m3747b(Context context, int i10, int i11) {
        Integer numValueOf;
        TypedValue typedValueM5584a = AbstractC3517b.m5584a(i10, context);
        if (typedValueM5584a != null) {
            int i12 = typedValueM5584a.resourceId;
            numValueOf = Integer.valueOf(i12 != 0 ? ContextCompat.getColor(context, i12) : typedValueM5584a.data);
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : i11;
    }

    /* JADX INFO: renamed from: c */
    public static int m3748c(float f8, int i10, int i11) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i11, Math.round(Color.alpha(i11) * f8)), i10);
    }
}
