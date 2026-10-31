package p228w3;

import android.content.Context;
import android.util.TypedValue;
import p142n0.C2467b;

/* JADX INFO: renamed from: w3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3517b {
    /* JADX INFO: renamed from: a */
    public static TypedValue m5584a(int i10, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m5585b(Context context, int i10, boolean z9) {
        TypedValue typedValueM5584a = m5584a(i10, context);
        if (typedValueM5584a == null || typedValueM5584a.type != 18) {
            return z9;
        }
        return typedValueM5584a.data != 0;
    }

    /* JADX INFO: renamed from: c */
    public static TypedValue m5586c(Context context, String str, int i10) {
        TypedValue typedValueM5584a = m5584a(i10, context);
        if (typedValueM5584a != null) {
            return typedValueM5584a;
        }
        C2467b.m3832v("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i10)});
        return null;
    }
}
