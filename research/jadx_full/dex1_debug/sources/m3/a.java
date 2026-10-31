package m3;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import w3.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, View view) {
        Context context = view.getContext();
        TypedValue typedValueC = b.c(view.getContext(), view.getClass().getCanonicalName(), i9);
        int i10 = typedValueC.resourceId;
        return i10 != 0 ? ContextCompat.getColor(context, i10) : typedValueC.data;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(Context context, int i9, int i10) {
        Integer numValueOf;
        TypedValue typedValueA = b.a(i9, context);
        if (typedValueA != null) {
            int i11 = typedValueA.resourceId;
            numValueOf = Integer.valueOf(i11 != 0 ? ContextCompat.getColor(context, i11) : typedValueA.data);
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(float f8, int i9, int i10) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i10, Math.round(Color.alpha(i10) * f8)), i9);
    }
}
